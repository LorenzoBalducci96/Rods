#include <cmath>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include "ap_int.h"
#include "hls_video.h"

typedef ap_axiu<8,1,1,1> AXI_VALUE;
typedef hls::stream<ap_axiu<8,1,1,1> > AXI_STREAM;

void contours_finder (AXI_STREAM &in_stream, AXI_STREAM &out_stream,
		AXI_STREAM &male_match, AXI_STREAM &female_match, unsigned long counter_area_out[256],
		unsigned int mean_x_position[256], unsigned int mean_y_position[256]);

AXI_VALUE generateAxiValue(unsigned char value,
		unsigned short width_count, unsigned short heigth_count);
