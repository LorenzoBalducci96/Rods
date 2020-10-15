#include "binarization.h"

void binarization (AXI_STREAM &in_stream, unsigned char threshold,
		ap_uint<1> update_threshold, ap_uint<1> inverted, AXI_STREAM &out_stream) {
//#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
#pragma HLS INTERFACE axis port=out_stream name=OUTPUT_STREAM
#pragma HLS INTERFACE axis port=in_stream name=INPUT_STREAM
	static unsigned width_count = 0;
	static unsigned height_count = 0;

	static unsigned char threshold_memorized = 128;

		AXI_VALUE aValue;//stream value
		unsigned char readedVal;//unsigned char stream data value
		union {	unsigned char ival; char oval; } converter;//converter to extract c data

		if(update_threshold){
			threshold_memorized = threshold;
		}

		in_stream.read(aValue);
		if(inverted){
			if(aValue.data > threshold_memorized){
				aValue.data = 0;
			}else{
				aValue.data = 255;
			}
		}else{
			if(aValue.data > threshold_memorized){
				aValue.data = 255;
			}else{
				aValue.data = 0;
			}
		}
		out_stream.write(aValue);
}





