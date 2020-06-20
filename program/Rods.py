#theese imports are required for the cv engine
import numpy as np
import cv2
import matplotlib.pyplot as plt
from scipy.spatial.distance import euclidean
import math
import time #used just for measuring performance...TODO remove for deploy

#theese imports are required for the connection with the graphical ui frontend
import sys
import platform
import json
import base64
from PIL import Image
import PIL.ImageOps
from io import BytesIO
import re
import eel

eel.init('static_web_folder')

@eel.expose
def startPipeline(imageData, smootingKernelSize, smoothingAlgorithm, threshold_algorithm, minimumRodsSize, cornersQuality, blockSize, kSize, cornersAlgorithm):
    smootingKernelSize = int(smootingKernelSize)
    minimumRodsSize = int(minimumRodsSize)
    cornersQuality = float(cornersQuality)
    blockSize = int(blockSize)
    kSize = int(kSize)
    
    base64_decoded = base64.b64decode(imageData)
    imageBytes = Image.open(BytesIO(base64_decoded))
    img = np.array(imageBytes)
    try:
        img = cv2.cvtColor(img, cv2.COLOR_GRAY2BGR)
    except:
        pass
    
    sendHistogram = True
    sendThresholded = True
    sendJoin = True
    sendContours = False
    sendDustFiltered = True
    sendRodsContours = False
    sendResult = True
    sendMetadata = True

    try:
        imgGray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    except:
        imgGray = img.copy()

    #SMOOTHING ===> smoothedImg
    #Smoothing is done to prevent error in binarization (i.e.: TESI47.BMP)
    #Blur the image to threshold the image more easily
    if(smoothingAlgorithm == "blur"):
        smoothedImg = cv2.blur(imgGray, (smootingKernelSize, smootingKernelSize)) #apply a smoothing kernel of size 3
    elif (smoothingAlgorithm == "median"):
        smoothedImg = cv2.medianBlur(imgGray, smootingKernelSize)
    elif (smoothingAlgorithm == "gaussian"):
        smoothedImg = cv2.GaussianBlur(imgGray, (smootingKernelSize, smootingKernelSize), 0)
    else:
        smoothedImg = imgGray #else no smoothing
    #plt.imshow(smoothedImg, cmap='gray');
    if(sendHistogram):
        histr = cv2.calcHist([smoothedImg], [0], None, [256], [0,255])
        histr = np.array(histr, dtype=int)
        eel.setHistogram(histr.tolist())


    #THRESHOLDING ===> threshImg
    if(threshold_algorithm == "otsu"):
        threshold, threshImg = cv2.threshold(smoothedImg, 0, 255, cv2.THRESH_BINARY_INV+cv2.THRESH_OTSU)
    elif(threshold_algorithm.startswith("manual")):
        threshold = int(threshold_algorithm.partition("=")[2])
        threshold, threshImg = cv2.threshold(smoothedImg,threshold ,255,cv2.THRESH_BINARY_INV)
    if(sendThresholded):
        eel.setThresholded(threshImg.tolist())

    #ALL CONTOURS ===> we sent the contours wrote on the initial img colored
    _, approxContours, approxHierarchy = cv2.findContours(threshImg, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
    approxContours = np.array(approxContours)
    if(sendContours):
        contoursImg = img.copy()
        cv2.drawContours(contoursImg, approxContours, -1, (255, 0, 0), 1)
        eel.setContours(contoursImg.tolist())

    #FILTER SMALLER ELEMENTS (dust filter) ===> threshImg now has just bigger rods
    mask = np.zeros(threshImg.shape, dtype="uint8")
    for i,cnt in enumerate(approxContours):
        if(approxHierarchy[0][i][3] == -1):
            if(cv2.contourArea(cnt) > minimumRodsSize):
                cv2.fillPoly(mask, [cnt], 1)
    #plt.imshow(mask)
    #plt.show()
    threshImg = threshImg * mask
    if(sendDustFiltered):
        eel.setDustFiltered(threshImg.tolist())

    #IDENTIFYING CORNERS FOR CUTTING THE ATTACHED RODS
    if(cornersAlgorithm == "imageProcessing"):
        thresh = int(cornersQuality)
        pointsOfConnections = []
        gray = np.float32(threshImg)
        dst = cv2.cornerHarris(gray, blockSize, kSize, 0.04)#harris k value...from 0.04 to 0.06
        #ret, dst = cv2.threshold(dst,0.1*dst.max(),255,0)
        ret, dst = cv2.threshold(dst,thresh,255,0)
        dst = np.uint8(dst)
        ret, labels, stats, centroids = cv2.connectedComponentsWithStats(dst)
        criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 100, 0.001)
        corners = cv2.cornerSubPix(gray,np.float32(centroids),(5,5),(-1,-1),criteria)
        # Drawing a circle around corners
        for cor in corners:
            pointsOfConnections.append(corners)
        pointsOfConnections = pointsOfConnections[0]

    if (cornersAlgorithm == "contoursAngle"):
        distanceOfPointsForCalculatingAngles = 3
        continueStraightPointsForNewCorner = 3
        overlapOnIterations = continueStraightPointsForNewCorner
        pointsOfConnections = []
        for i in range(0, approxContours.shape[0]):#for all contours
            #if(approxHierarchy[0][i,3] == -1):#upper contours
                if(cv2.contourArea(approxContours[i]) > minimumRodsSize): #dust filter (area minimut tot pixels)
                    distance = distanceOfPointsForCalculatingAngles
                    continuosStraight = 0
                    for j in range(0, approxContours[i].shape[0] + overlapOnIterations):
                            first = j - distance
                            second = j + distance
                            if(first < 0):
                                first = first + approxContours[i].shape[0]
                            elif(first >= approxContours[i].shape[0]):
                                first = first - approxContours[i].shape[0]

                            if(second < 0):
                                second = second + approxContours[i].shape[0]
                            elif(second >= approxContours[i].shape[0]):
                                second = second - approxContours[i].shape[0]

                            if(j < 0):
                                j = j + approxContours[i].shape[0]
                            elif(j >= approxContours[i].shape[0]):
                                j = j - approxContours[i].shape[0]

                            ba = approxContours[i][first] - approxContours[i][j]
                            bc = approxContours[i][second] - approxContours[i][j]

                            cosine_angle = np.dot(ba[0], bc[0]) / (np.linalg.norm(ba) * np.linalg.norm(bc))
                            angle = np.degrees(np.arccos(cosine_angle))

                            if(angle < 95):#if is a corner
                                if(continuosStraight >= continueStraightPointsForNewCorner):#viene rilevato più volte, più o meno lo stesso punto all'interno del trenino
                                    continuosStraight = 0
                                    pointsOfConnections.append(approxContours[i][j][0])
                            else:
                                continuosStraight = continuosStraight + 1
    
    if(sendJoin):
            joinDebugImage = img.copy()
            for point in pointsOfConnections:
                cv2.circle(joinDebugImage, tuple(point), 2, (255, 0, 0), -1)
            eel.setJoin(joinDebugImage.tolist())
        

    #MATCHING CORNERS TWINS
    maximumInterceptionDistance = 50
    matches = []
    defectPairs = []
    for i, d1 in enumerate(pointsOfConnections):
        for j, d2 in enumerate(pointsOfConnections):
            if(i != j):
                matches.append((i, j, euclidean(tuple(d1), tuple(d2))))
    matches = [x for x in matches if x[2] < maximumInterceptionDistance]
    while(len(matches) > 1):
        minIndex = [x[2] for x in matches].index(min([x[2] for x in matches])) #id coppia punti piu vicini
        defectPairs.append([pointsOfConnections[matches[minIndex][0]],
            pointsOfConnections[matches[minIndex][1]]])
        matches = [x for x in matches if x[0] != matches[minIndex][0] \
            and x[1] != matches[minIndex][0] and x[0] != matches[minIndex][1] \
            and x[1] != matches[minIndex][1]]

    #CUTTING CONNECTED RODS AND RECALCULATING CONTOURS (with missing pixels)
    correctThreshImg = threshImg#cv2.cvtColor(threshImg.copy(), cv2.COLOR_GRAY2BGR)
    for pair in defectPairs:
        cv2.line(correctThreshImg, tuple(pair[0]), tuple(pair[1]), (0, 0, 0), 2)
    _, corrContours, corrHierarchy = cv2.findContours(correctThreshImg, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)

    corrContours = np.array(corrContours)
    corrHierarchy = np.array(corrHierarchy)
    #n_rods = np.sum(corrHierarchy[0][:,3] == -1)
    rodsContours = corrContours[corrHierarchy[0][:, 3] == -1]

    #TAKE RODS IN CONSIDERATION ONE BY ONE:
    #AFTER THE RECONSTRUCTION (we redraw the lines put for cutting) WE HAVE THE CORRECT CONTOURS
    finalContours = []
    finalHierarcy = []
    for count, cnt in enumerate(rodsContours):
        imageForSingleRods = correctThreshImg.copy()
        mask = np.zeros(imageForSingleRods.shape, dtype="uint8")
        cv2.fillPoly(mask, [cnt], 1)
        imageForSingleRods = imageForSingleRods * mask

        for pair in defectPairs:
            if(abs(cv2.pointPolygonTest(cnt,tuple(pair[1]),True)) < 4):#TODO valuta se conviene farlo
                cv2.line(imageForSingleRods, tuple(pair[0]), tuple(pair[1]), 255, 2)
        
        _, rodContours, rodHierarcy = cv2.findContours(imageForSingleRods, cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
        rodContours = np.array(rodContours)
        finalContours.append(rodContours)
        finalHierarcy.append(rodHierarcy)

    if(sendRodsContours):
        rodsContoursImage = img.copy()
        arrayOfContours = np.array(finalContours)
        for rodsContours in finalContours:
            for cnt in rodsContours:
                cv2.drawContours(rodsContoursImage, [cnt], -1, (255, 0, 0), 2)
        eel.setRodsContours(rodsContoursImage.tolist())
    

    #FINAL DATA ESTRAPOLATIONS
    #finalImage = cv2.cvtColor(img, cv2.COLOR_GRAY2BGR)
    finalImage = img.copy()
    rodsData = {}
    numRods = 1
    for i, rodContours in enumerate(finalContours):#tutti i gruppi di biella e i suoi buchi
        for j, cnt in enumerate(rodContours):#biella o buchi
            if (finalHierarcy[i][0][j][3] == -1):#i is the group related to the rodContours...j is the element (is a rods or is a hole? ===> if [3] is -1 is the external countour!)'
                area = cv2.contourArea(cnt) #here should just find bigger object because smaller are filtered before
                if(area > minimumRodsSize):
                    holesCount = np.sum(finalHierarcy[i][0][:, 3] != -1)
                    M = cv2.moments(cnt)
                    cx = int(M['m10']/M['m00'])
                    cy = int(M['m01']/M['m00'])

                    perimeter = cv2.arcLength(cnt, True)
                    compactness = (perimeter ** 2) / area
                    #print(str(rodIndex) + ':\t', compactness)
                    
                    if holesCount > 0 and holesCount < 3 and compactness > 20:#althoug is a distractor
                        rodsDict = {'center': (cx, cy),
                                    'id': numRods
                                }

                        if holesCount == 1:
                            rodsDict['type'] = 'A'
                            cv2.putText(finalImage, str(numRods) + 'A', (cx - 7, cy + 20), cv2.FONT_HERSHEY_SIMPLEX, 0.66, (255, 0, 0), 1)
                        elif holesCount == 2:
                            rodsDict['type'] = 'B'
                            cv2.putText(finalImage, str(numRods) + 'B', (cx - 7, cy + 20), cv2.FONT_HERSHEY_SIMPLEX, 0.66, (255, 0, 0), 1)
                        cv2.drawContours(finalImage, [cnt], -1, (0, 255, 255), 1)

                        (x, y), (width, length), angle = cv2.fitEllipse(cnt)
                        angle = int(180 + ((angle % 180) - 90) * (-1)) % 180 #some math calculations for having the angle between 0 and 180
                        rodsDict['angle'] = angle % 180
                        rodsDict['length'] = round(length, 2)
                        rodsDict['width'] = round(width, 2)
                        arrowLength = 30
                        radians = - angle * np.pi / 180

                        x2 = int(round(np.cos(radians) * arrowLength + cx))
                        y2 = int(round(np.sin(radians) * arrowLength + cy))
                        cv2.arrowedLine(finalImage, (cx, cy), (x2, y2), (225, 131, 53))

                        
                        nearestPoint = cnt[np.argmin([euclidean(c, (cx, cy)) for c in cnt])]
                        finalImage = cv2.line(finalImage, (cx, cy), tuple(nearestPoint[0]), (220, 0, 255))
                        rodsDict['width_on_baricenter'] = euclidean(tuple(nearestPoint[0]), (cx, cy)) * 2

                        #rodsContours[[finalHierarcy[i][0][:,3] == [j]]]
                        holes = rodContours[finalHierarcy[i][0][:,3] == [j]]
                        holesList = []
                        for n, hole in enumerate(holes):
                            holeDict = {}
                            cv2.drawContours(finalImage, hole.reshape(1, -1, 2), -1, (241, 143, n*125), 1)
                            
                            Mhole = cv2.moments(hole)
                            cxHole = int(Mhole['m10']/Mhole['m00'])
                            cyHole = int(Mhole['m01']/Mhole['m00'])
                            holeDict['center'] = (cxHole, cyHole)
                            
                            cv2.circle(finalImage, (cxHole, cyHole), 1, (177, 133, 167), -1)
                            
                            holeArea = cv2.contourArea(hole)
                            equi_diameter = np.sqrt(4 * holeArea / np.pi)
                            holeDict['diameter'] = round(equi_diameter, 2)
                            cv2.putText(finalImage, str(round(equi_diameter, 1)), (cxHole - 8, cyHole + 9), cv2.FONT_HERSHEY_PLAIN, 0.5, (0, 125, 125), 1)
                            holesList.append(holeDict)
                        rodsDict['holes'] = holesList
                        rodsData[numRods - 1] = rodsDict
                        numRods = numRods + 1

    if(sendResult):
        eel.setImage(finalImage.tolist())
        

    #plt.imshow(finalImage)
    #plt.show()
    print("data," + json.dumps(rodsData, indent=4, sort_keys=True))
    if(sendMetadata):
        eel.setRodsData(rodsData)


try:
    eel.start('index.html', size=(600, 600)) #first try is chrome...than the preferred browser
except EnvironmentError:
        # If Chrome isn't found, and a default browser is not set, fallback to Microsoft Edge on Win10 or greater
        if sys.platform in ['win32', 'win64'] and int(platform.release()) >= 10:
            eel.start('index.html', mode='edge', size=(600, 600))
        else:
            raise EnvironmentError('Error: chrome is not installed, and a default browser is not set')
