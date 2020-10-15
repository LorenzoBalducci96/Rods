#include "axiStream2AxiVideoStream.h"

void axis_to_axiVideoStream ( hls::stream<AXI_VALUE> &in_stream,
	hls::stream<AXI_VALUE> &out_stream) {
//#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
#pragma HLS INTERFACE axis port=out_stream name=OUTPUT_STREAM
#pragma HLS INTERFACE axis port=in_stream name=INPUT_STREAM
	static unsigned width_count = 0;
	static unsigned height_count = 0;

		AXI_VALUE aValue;//stream value

		in_stream.read(aValue);

		if(width_count == 0 && height_count == 0){
			aValue.user = 1; //SOF == true
			aValue.last = 0; //EOL == false

		}else if(width_count == WIDTH - 1){
			aValue.user = 0; //SOF == false
			aValue.last = 1; //EOL == true

		}else{
			aValue.user = 0; //SOF == false
			aValue.last = 0; //EOL == false

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


/*
 * #include "axiStream2AxiVideoStream.h"

void axis_to_axiVideoStream ( hls::stream<AXI_VALUE> &in_stream_left,
		hls::stream<AXI_VALUE> &in_stream_right,
	hls::stream<AXI_VALUE> &out_stream_left,
	hls::stream<AXI_VALUE> &out_stream_right) {
//#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
#pragma HLS INTERFACE axis port=out_stream_left name=OUTPUT_LEFT
#pragma HLS INTERFACE axis port=out_stream_right name=OUTPUT_RIGHT
#pragma HLS INTERFACE axis port=in_stream_left name=INPUT_LEFT
#pragma HLS INTERFACE axis port=in_stream_right name=INPUT_RIGHT
	static unsigned width_count = 0;
	static unsigned height_count = 0;

		AXI_VALUE aValue_left;//stream value
		AXI_VALUE aValue_right;//stream value

		in_stream_left.read(aValue_left);
		in_stream_right.read(aValue_right);

		if(width_count == 0 && height_count == 0){
			aValue_left.user = 1; //SOF == true
			aValue_right.user = 1; //SOF == true
			aValue_left.last = 0; //EOL == false
			aValue_right.last = 0; //EOL == false
		}else if(width_count == WIDTH - 1){
			aValue_left.user = 0; //SOF == false
			aValue_right.user = 0; //SOF == false
			aValue_left.last = 1; //EOL == true
			aValue_right.last = 1; //EOL == true
		}else{
			aValue_left.user = 0; //SOF == false
			aValue_right.user = 0; //SOF == false
			aValue_left.last = 0; //EOL == false
			aValue_right.last = 0; //EOL == false
		}

		width_count++;
		if(width_count == WIDTH){
			width_count = 0;
			height_count++;
			if(height_count == HEIGHT){
				height_count = 0;
			}
		}


		out_stream_left.write(aValue_left);
		out_stream_right.write(aValue_right);

}
 */


