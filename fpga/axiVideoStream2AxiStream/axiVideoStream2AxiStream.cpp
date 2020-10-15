#include "axiVideoStream2AxiStream.h"

void axiVideoStream2AxiStream (hls::stream<AXI_VALUE> &in_stream,
	hls::stream<AXI_VALUE> &out_stream) {
//#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
#pragma HLS INTERFACE axis port=out_stream name=OUTPUT_STREAM
#pragma HLS INTERFACE axis port=in_stream name=INPUT_STREAM
	static unsigned width_count = 0;
	static unsigned height_count = 0;

		AXI_VALUE aValue;//stream value
		unsigned char readedVal;//unsigned char stream data value
		unsigned char outputVal;
		union {	unsigned char ival; char oval; } converter;//converter to extract c data

		in_stream.read(aValue);

		if(width_count == WIDTH - 1  && height_count == HEIGHT - 1){
			aValue.last = 1;
		}else {
			aValue.last = 0;
		}

		width_count++;
		if(width_count == WIDTH){
			width_count = 0;
			height_count++;
			if(height_count == HEIGHT){
				height_count = 0;
			}
		}


		out_stream.write(aValue);

}





