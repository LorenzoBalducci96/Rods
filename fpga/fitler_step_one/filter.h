#include <cmath>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include "ap_int.h"
#include "hls_video.h"

#define MAX_HEIGHT 512
#define MAX_WIDTH 512


//typedef ap_uint<32> uint32_t;
//typedef ap_axiu<8,4,5,5> AXI_VALUE;
typedef ap_axiu<8,1,1,1> AXI_VALUE;
typedef hls::stream<ap_axiu<8,1,1,1> > AXI_STREAM;



//typedef int UINT;
void image_filter(AXI_STREAM& input,
		AXI_STREAM& output);
