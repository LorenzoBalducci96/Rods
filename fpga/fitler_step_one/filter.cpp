#include "filter.h"

void image_filter(AXI_STREAM& input, AXI_STREAM& output) {
	//Create AXI streaming interfaces for the core
		#pragma HLS RESOURCE variable=input core=AXIS metadata="-bus_bundle INPUT_STREAM"
		#pragma HLS RESOURCE variable=output core=AXIS metadata="-bus_bundle OUTPUT_STREAM"


		hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> img_input(MAX_WIDTH, MAX_HEIGHT);
		hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> filtered_1(MAX_WIDTH, MAX_HEIGHT);
	#pragma HLS DATAFLOW


		hls::AXIvideo2Mat(input, img_input);
		hls::GaussianBlur<7,7>(img_input, filtered_1);

		//hls::FASTX(filtered_2, filtered_3, 20, true);

		hls::Mat2AXIvideo(filtered_1, output);
		//hls::Mat2AXIvideo(filtered_2, output);

	/*
	//Create AXI streaming interfaces for the core
	#pragma HLS RESOURCE variable=input core=AXIS metadata="-bus_bundle INPUT_STREAM"
	#pragma HLS RESOURCE variable=output core=AXIS metadata="-bus_bundle OUTPUT_STREAM"


	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> img_input(MAX_WIDTH, MAX_HEIGHT);
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> filtered(MAX_WIDTH, MAX_HEIGHT);
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> filtered_dup_right(MAX_WIDTH, MAX_HEIGHT);
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> filtered_dup_left(MAX_WIDTH, MAX_HEIGHT);
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> sobel_right(MAX_WIDTH, MAX_HEIGHT);
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> sobel_left(MAX_WIDTH, MAX_HEIGHT);
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> full_sobel(MAX_WIDTH, MAX_HEIGHT);
#pragma HLS DATAFLOW


	hls::AXIvideo2Mat(input, img_input);
	hls::GaussianBlur<7,7>(img_input, filtered);
	hls::Duplicate(filtered,filtered_dup_right,filtered_dup_left);
	//TODO decomment
	hls::Sobel<1,0,3>(filtered_dup_right, sobel_right);
	hls::Sobel<0,0,3>(filtered_dup_left, sobel_left);
	hls::AddWeighted(sobel_right, 0.5, sobel_left, 0.5, 0.0, full_sobel);

	//hls::Mat2AXIvideo(filtered, output);
	hls::Mat2AXIvideo(full_sobel, output);
	*/
}
