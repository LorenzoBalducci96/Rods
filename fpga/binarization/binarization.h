#include <cmath>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include "ap_int.h"


typedef ap_axiu<8,1,1,1> AXI_VALUE;
typedef hls::stream<ap_axiu<8,1,1,1> > AXI_STREAM;


void binarization (AXI_STREAM &in_stream, unsigned char threshold,
		ap_uint<1> update_threshold, ap_uint<1> inverted, AXI_STREAM &out_stream);
