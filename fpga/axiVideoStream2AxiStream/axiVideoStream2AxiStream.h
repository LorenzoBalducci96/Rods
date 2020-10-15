#include <cmath>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include "ap_int.h"


typedef ap_axiu<8,1,1,1> AXI_VALUE;

#define WIDTH 320
#define HEIGHT 240


void axiVideoStream2AxiStream ( hls::stream<AXI_VALUE> &in_stream,
	hls::stream<AXI_VALUE> &out_stream);
