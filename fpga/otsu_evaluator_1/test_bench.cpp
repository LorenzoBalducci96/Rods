#include "otsu.h"
#include "hls_opencv.h"



int main()
{

	cv::Mat src = cv::imread("rods.bmp",  cv::IMREAD_GRAYSCALE);
	cv::Mat dst = src;



	AXI_STREAM stream_in, stream_out;
	AXI_VALUE aValue;
	unsigned char threshold;
	ap_uint<1> valid;

	//union {	unsigned char ival; char oval; } converter;

	cvMat2AXIvideo(src, stream_in);
	int count = 0;
	for(count = 0; count < 512*512; count++){
		otsu(stream_in, stream_out, &threshold, &valid);
	}

	/*
	for(count = 0; count < 512; count++){
		stream_out.read(aValue);
		converter.ival = aValue.data;
		unsigned char readedVal = converter.oval;
	}
	*/
	AXIvideo2cvMat(stream_out, dst);

	cv::imwrite("rods_output.bmp", dst);

	return 0;
}
