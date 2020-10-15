#include "filter.h"
#include "hls_opencv.h"

int main()
{
	int const rows = MAX_HEIGHT;
	int const cols = MAX_WIDTH;

	cv::Mat src = cv::imread("rods_grayscale.bmp",  cv::IMREAD_GRAYSCALE);
	cv::Mat dst = src;



	AXI_STREAM stream_in, stream_out;
	AXI_VALUE aValue;

	//union {	unsigned char ival; char oval; } converter;

	cvMat2AXIvideo(src, stream_in);
	image_filter(stream_in, stream_out);
	int count = 0;
	/*
	for(count = 0; count < 512; count++){
		stream_out.read(aValue);
		converter.ival = aValue.data;
		unsigned char readedVal = converter.oval;
	}
	*/
	AXIvideo2cvMat(stream_out, dst);

	cv::imwrite("rods_gaussian.bmp", dst);

	return 0;
}
