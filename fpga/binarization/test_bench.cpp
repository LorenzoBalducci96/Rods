#include "binarization.h"
#include "hls_opencv.h"



int main()
{

	cv::Mat src = cv::imread("rods_grayscale.bmp",  cv::IMREAD_GRAYSCALE);
	cv::Mat dst = src;



	AXI_STREAM stream_in, stream_out;
	AXI_VALUE aValue;
	unsigned char threshold = 90;
	ap_uint<1> update_threshold = 1;
	ap_uint<1> inverse = 0;

	//union {	unsigned char ival; char oval; } converter;

	cvMat2AXIvideo(src, stream_in);
	int count = 0;
	for(count = 0; count < 512*512; count++){
		binarization(stream_in, threshold, update_threshold, inverse, stream_out);
	}
	AXIvideo2cvMat(stream_out, dst);
	cv::imwrite("binarized.bmp", dst);

	return 0;
}
