var video = document.getElementById("video");
var canvas = document.getElementById("canvas");
var context = canvas.getContext("2d");

var image = document.getElementById("image");//img of final algoritm
var contoursImage = document.getElementById("contoursImage");//canvas of the contours
var thresholdedImage = document.getElementById("thresholdedImage");//canvas of threshold
var joinImage = document.getElementById("joinImage");//canvas of joins
var dustFilteredImage = document.getElementById("dustFilteredImage")
var rodsContoursImage = document.getElementById("rodsContoursImage");

var histogramLabels = new Array(256);
var histogramData = new Array(256);
var histogramCtx = document.getElementById('histogramCanvas').getContext('2d');
var histogramChart = new Chart(histogramCtx, {
    type: 'line',//bar
    data: {
        labels: histogramLabels,
        datasets: [{
            data: histogramData,
            /*
            backgroundColor: [
                'rgba(255, 255, 255, 0.8)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)'
            ],
            */
            backgroundColor: 'rgba(255, 255, 255, 0.8)',
            borderWidth: 2
        }]
    },
    options: {
        legend: {
            display: false,
        },
        animation: {
            duration: 0
        }
        
    }
})

var liveVideoOn = false;
var cornersAlgorithm = "contoursAngle"

var selectedFile;//for analyzing single image
function onFileSelected(event) {

    selectedFile = event.target.files[0];
    analyzePhoto();
}

function analyzePhoto(){

    //unefficient raw data sent
    /*
    var img = new Image;
    img.onload = function() {
        liveVideoOn = false;
        context.drawImage(img, 0,0);
        imageData = context.getImageData(0, 0, img.width - 1, img.height - 1)
        imageDataArray = Array.from(Array(imageData.height), () => new Array(imageData.width));
        for(i = 0; i < imageData.height; i++){
            for(j = 0; j < imageData.width; j++){
                pixel = [
                    imageData.data[(imageData.width*i + j)*4],
                    imageData.data[(imageData.width*i + j)*4 + 1] ,
                    imageData.data[(imageData.width*i + j)*4 + 2]
                ]
                imageDataArray[i][j] = pixel
            }
        }
        refreshImage(imageDataArray)
    }
    img.src = URL.createObjectURL(selectedFile);
    */

    
    var reader = new FileReader();
    reader.onload = function(event) {
        liveVideoOn = false;
        refreshImage(event.target.result.substring(event.target.result.indexOf(',') + 1));
    };
    reader.readAsDataURL(selectedFile);
    
}

async function useCameraLiveVideo(){
    stream = await navigator.mediaDevices.getUserMedia(
        { audio: false, 
            video: {
                width: { max: 320 },
                height: { max: 240 }
            }
        });
    video.srcObject = stream;
    liveVideoOn = true;
}

function useNextCameraPhotogram(){
    context.drawImage(video, 0, 0);
    //TODO use raw data instead
    /*
    let imagedata = joinImageContext.createImageData(image[0].length, image.length);
    for(j = 0; j < image.length; j++){//scorre tutte le righe
        for(i = 0; i < image[0].length; i++){//scorre tutte le colonne
            imagedata.data[(j * image[0].length + i)*4] = image[j][i][0]
            imagedata.data[(j * image[0].length + i)*4 + 1] = image[j][i][1]
            imagedata.data[(j * image[0].length + i)*4 + 2] = image[j][i][2]
            imagedata.data[(j * image[0].length + i)*4 + 3] = 255
        }
    }
    joinImageContext.putImageData(imagedata, 0, 0);
    */
    base64Image = canvas.toDataURL("image/jpeg");
    refreshImage(base64Image.substring(base64Image.indexOf(',') + 1));
}

function start(){
    liveVideoOn = true;
    useNextCameraPhotogram();
}

function stop(){
    liveVideoOn = false;
}

function refreshImage(imageData){
    var choosedThresholdingAlgorithm;
    if($('#thresholdingAlgorithm .active input').val() == "otsu"){
        choosedThresholdingAlgorithm = "otsu"
    }else{
        choosedThresholdingAlgorithm = "manual=" + document.getElementById("manualThresholdValue").value
    }

    eel.startPipeline(imageData, document.getElementById("smoothingKernelSize").value,
        $('#smoothingAlgorithm .active input').val(), 
        choosedThresholdingAlgorithm, document.getElementById("rodsMinimumSize").value,
        document.getElementById("cornersQualityValue").value, 
        document.getElementById("cornersBlockSize").value,
        document.getElementById("cornersKSize").value,
        cornersAlgorithm)
}

eel.expose(setImage);

function setImage(output){
    /*
    image.src = "data:image/png;base64, " + imageBase64
    if(liveVideoOn){
        useNextCameraPhotogram();
    }
    */
    image.width = output[0].length
    image.height = output.length
    imageContext = image.getContext("2d");
    let imagedata = imageContext.createImageData(output[0].length, output.length);
   
    for(j = 0; j < output.length; j++){//scorre tutte le righe
        for(i = 0; i < output[0].length; i++){//scorre tutte le colonne
            imagedata.data[(j * output[0].length + i)*4] = output[j][i][0]
            imagedata.data[(j * output[0].length + i)*4 + 1] = output[j][i][1]
            imagedata.data[(j * output[0].length + i)*4 + 2] = output[j][i][2]
            imagedata.data[(j * output[0].length + i)*4 + 3] = 255
        }
    }
    imageContext.putImageData(imagedata, 0, 0);
    if(liveVideoOn){
        useNextCameraPhotogram();
    }
}

eel.expose(setHistogram);
function setHistogram(levels){	
    for(i = 0; i < 256; i++){
        histogramLabels[i] = i;
        histogramData[i] = levels[i][0];
    }
    histogramCtx.clearRect(0, 0, 
        document.getElementById('histogramCanvas').width,
        document.getElementById('histogramCanvas').height);
    histogramChart.update();
}

eel.expose(setThresholded);
function setThresholded(image){
    thresholdedImage.width = image[0].length
    thresholdedImage.height = image.length
    thresholdedImagecontext = thresholdedImage.getContext("2d");
    let imagedata = thresholdedImagecontext.createImageData(image[0].length, image.length);
    
    for(j = 0; j < image.length; j++){//scorre tutte le righe
        for(i = 0; i < image[0].length; i++){//scorre tutte le colonne
            imagedata.data[(j * image[0].length + i)*4] = image[j][i]
            imagedata.data[(j * image[0].length + i)*4 + 1] = image[j][i]
            imagedata.data[(j * image[0].length + i)*4 + 2] = image[j][i]
            imagedata.data[(j * image[0].length + i)*4 + 3] = 255
        }
    }
    thresholdedImagecontext.putImageData(imagedata, 0, 0);
}

eel.expose(setJoin);
function setJoin(image){
    joinImage.width = image[0].length
    joinImage.height = image.length
    joinImageContext = joinImage.getContext("2d");
    let imagedata = joinImageContext.createImageData(image[0].length, image.length);
    for(j = 0; j < image.length; j++){//scorre tutte le righe
        for(i = 0; i < image[0].length; i++){//scorre tutte le colonne
            imagedata.data[(j * image[0].length + i)*4] = image[j][i][0]
            imagedata.data[(j * image[0].length + i)*4 + 1] = image[j][i][1]
            imagedata.data[(j * image[0].length + i)*4 + 2] = image[j][i][2]
            imagedata.data[(j * image[0].length + i)*4 + 3] = 255
        }
    }
    joinImageContext.putImageData(imagedata, 0, 0);
}

eel.expose(setDustFiltered)
function setDustFiltered(image){
    dustFilteredImage.width = image[0].length
    dustFilteredImage.height = image.length
    dustFilteredContext = dustFilteredImage.getContext("2d");
    let imagedata = dustFilteredContext.createImageData(image[0].length, image.length);
    for(j = 0; j < image.length; j++){//scorre tutte le righe
        for(i = 0; i < image[0].length; i++){//scorre tutte le colonne
            imagedata.data[(j * image[0].length + i)*4] = image[j][i]
            imagedata.data[(j * image[0].length + i)*4 + 1] = image[j][i]
            imagedata.data[(j * image[0].length + i)*4 + 2] = image[j][i]
            imagedata.data[(j * image[0].length + i)*4 + 3] = 255
        }
    }
    dustFilteredContext.putImageData(imagedata, 0, 0);
}

eel.expose(setContours);
function setContours(image){
    contoursImage.width = image[0].length
    contoursImage.height = image.length
    contoursImageContext = contoursImage.getContext("2d");
    let imagedata = contoursImageContext.createImageData(image[0].length, image.length);
    for(j = 0; j < image.length; j++){//scorre tutte le righe
        for(i = 0; i < image[0].length; i++){//scorre tutte le colonne
            imagedata.data[(j * image[0].length + i)*4] = image[j][i][0]
            imagedata.data[(j * image[0].length + i)*4 + 1] = image[j][i][1]
            imagedata.data[(j * image[0].length + i)*4 + 2] = image[j][i][2]
            imagedata.data[(j * image[0].length + i)*4 + 3] = 255
        }
    }
    contoursImageContext.putImageData(imagedata, 0, 0);
}

eel.expose(setRodsContours);
function setRodsContours(image){
    rodsContoursImage.width = image[0].length
    rodsContoursImage.height = image.length
    rodsContoursContext = rodsContoursImage.getContext("2d");
    let imagedata = rodsContoursContext.createImageData(image[0].length, image.length);
    for(j = 0; j < image.length; j++){//scorre tutte le righe
        for(i = 0; i < image[0].length; i++){//scorre tutte le colonne
            imagedata.data[(j * image[0].length + i)*4] = image[j][i][0]
            imagedata.data[(j * image[0].length + i)*4 + 1] = image[j][i][1]
            imagedata.data[(j * image[0].length + i)*4 + 2] = image[j][i][2]
            imagedata.data[(j * image[0].length + i)*4 + 3] = 255
        }
    }
    rodsContoursContext.putImageData(imagedata, 0, 0);
}

eel.expose(setRodsData)
function setRodsData(data){
    let count = 0;
    let table = document.getElementById("rodsDataTableBody")
    table.innerHTML = ""
    while (data[count] != undefined){
        let row = table.insertRow();
        let type = row.insertCell(0);
        let position = row.insertCell(1);
        let orientation = row.insertCell(2);
        let baricenter_width = row.insertCell(3);
        let length = row.insertCell(4);
        let width = row.insertCell(5);

        type.innerHTML = data[count]["type"]
        position.innerHTML = "[ " + data[count]["center"][0] + " | " + data[count]["center"][0] + " ]"
        orientation.innerHTML = data[count]["angle"]
        baricenter_width.innerHTML = data[count]["width_on_baricenter"].toFixed(2)
        length.innerHTML = data[count]["length"]
        width.innerHTML = data[count]["width"]

        countHoles = 0;
        while(data[count]["holes"][countHoles] != undefined){
            let holeRow = table.insertRow();
            let padding = holeRow.insertCell(0);
            let cell = holeRow.insertCell(1);
            cell.colSpan = 5
            cell.innerHTML = "hole " + (countHoles + 1) + " diameter : " + 
                data[count]["holes"][countHoles]["diameter"] + " position : [ " +
                data[count]["holes"][countHoles]["center"][0] + " | " +
                data[count]["holes"][countHoles]["center"][1] + " ] "
            countHoles++;
        }
        count++;
    }
}
    

/*
    pyshell.on('message', function (message) {
        if(message.startsWith("image,")){
            image.src = "data:image/png;base64, " + message.substring(message.indexOf(',') + 1);
            if(liveVideoOn){
                useNextCameraPhotogram();
            }
        }else if(message.startsWith("contoursImage,")){
            contoursImage.src = "data:image/png;base64, " + message.substring(message.indexOf(',') + 1);
        }else if(message.startsWith("rodsContoursImage,")){
            rodsContoursImage.src = "data:image/png;base64, " + message.substring(message.indexOf(',') + 1);
        }else if(message.startsWith("thresholdedImage,")){
            thresholdedImage.src = "data:image/png;base64, " + message.substring(message.indexOf(',') + 1);
        }else if(message.startsWith("info,")){
            console.log(message)
        }else if(message.startsWith("alert,")){
            alert(message.substring(message.indexOf(',') + 1))
        }else if(message.startsWith("histogram,")){
            histogramLevels = JSON.parse(message.substring(message.indexOf(',') + 1))
            
            for(i = 0; i < 256; i++){
                histogramLabels[i] = i;
                histogramData[i] = histogramLevels[i];
            }
            histogramCtx.clearRect(0, 0, 
                document.getElementById('histogramCanvas').width,
                document.getElementById('histogramCanvas').height);
            histogramChart.update();
            
        }
    });
*/