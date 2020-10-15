#include "otsu.h"

#define LARGHEZZA 512
#define ALTEZZA 512

void otsu (AXI_STREAM &in_stream, AXI_STREAM &out_stream, unsigned char *best_threshold,
	ap_uint<1> *updateThreshold) {

//#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
#pragma HLS INTERFACE axis port=out_stream name=OUTPUT_STREAM
#pragma HLS INTERFACE axis port=in_stream name=INPUT_STREAM
	static unsigned width_count = 0;
	static unsigned height_count = 0;

	static long scores[256];

	static unsigned int values[256];/* = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
										 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
										 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
										 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
										 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
										 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
										 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};*/

	AXI_VALUE aValue;//stream value
	unsigned char readedVal;//unsigned char stream data value
	unsigned char outputVal;
	union {	unsigned char ival; char oval; } converter;//converter to extract c data
	in_stream.read(aValue);

	if(width_count == 0 && height_count == 0){
		unsigned short count = 0;
		for(count = 0; count < 256; count++){
			values[count] = 0;
			scores[count] = 0;
		}
	}

	values[aValue.data]++;

	if(width_count == LARGHEZZA - 1 && height_count == ALTEZZA - 1){
		unsigned long sum = 0;
		unsigned short globalMean = 0;
		unsigned short meanUnderThreshold = 0;
		unsigned short meanOverThreshold = 0;

		unsigned short scoreIter = 0;
		for(scoreIter = 0; scoreIter < 256; scoreIter++){
			sum = sum + (values[scoreIter] * scoreIter);
		}
		globalMean = sum/(ALTEZZA*LARGHEZZA);

		int threshold = 0;
		for(threshold = 1; threshold <= 254; threshold+=1){
			unsigned long sum_under_threshold = 0;
			unsigned long sum_over_threshold = 0;
			unsigned long computedScore = 0;
			unsigned long count_pixels_under_threshold = 0;
			for(scoreIter = 0; scoreIter <= threshold; scoreIter++){
				sum_under_threshold = sum_under_threshold + (values[scoreIter] * scoreIter);
				count_pixels_under_threshold += values[scoreIter];
			}

			sum_over_threshold = 0;
			unsigned long count_pixels_over_threshold = 0;
			for(scoreIter = threshold + 1; scoreIter <= 255; scoreIter++){
				sum_over_threshold = sum_over_threshold + (values[scoreIter] * scoreIter);
				count_pixels_over_threshold += values[scoreIter];
			}

			if(count_pixels_over_threshold != 0 && count_pixels_under_threshold != 0){
				meanUnderThreshold = sum_under_threshold/count_pixels_under_threshold;
				meanOverThreshold = sum_over_threshold/count_pixels_over_threshold;

				unsigned int probability_under_threshold = count_pixels_under_threshold;
				unsigned int probability_over_threshold = count_pixels_over_threshold;

				computedScore = (probability_under_threshold *
						(meanUnderThreshold - globalMean)*(meanUnderThreshold - globalMean)  +
						probability_over_threshold *
						(meanOverThreshold - globalMean)*(meanOverThreshold - globalMean))/(LARGHEZZA*ALTEZZA);


				//float probability_under_threshold = count_pixels_under_threshold/(float)(LARGHEZZA*ALTEZZA);

				//float probability_over_threshold = count_pixels_over_threshold/(float)(LARGHEZZA*ALTEZZA);

				//computedScore = probability_under_threshold * (meanUnderThreshold - globalMean)*(meanUnderThreshold - globalMean)  +
					//	probability_over_threshold * (meanOverThreshold - globalMean)*(meanOverThreshold - globalMean);
			}else{
				computedScore = 0;
			}

			scores[threshold] = computedScore;

		}

		/*
		int thresholdOffset = 0;
		for(thresholdOffset = -127; thresholdOffset <= 127; thresholdOffset+=1){
			unsigned long sum_under_threshold = 0;
			unsigned long sum_over_threshold = 0;
			unsigned long computedScore = 0;
			unsigned long count_pixels_under_threshold = 0;
			for(scoreIter = 0; scoreIter <= 128 + thresholdOffset; scoreIter++){
				sum_under_threshold = sum_under_threshold + (values[scoreIter] * scoreIter);
				count_pixels_under_threshold += values[scoreIter];
			}

			sum_over_threshold = 0;
			unsigned long count_pixels_over_threshold = 0;
			for(scoreIter = 129 + thresholdOffset; scoreIter <= 255; scoreIter++){
				sum_over_threshold = sum_over_threshold + (values[scoreIter] * scoreIter);
				count_pixels_over_threshold += values[scoreIter];
			}

			if(count_pixels_over_threshold != 0 && count_pixels_under_threshold != 0){
				meanUnderThreshold = sum_under_threshold/count_pixels_under_threshold;
				meanOverThreshold = sum_over_threshold/count_pixels_over_threshold;


				unsigned int probability_under_threshold =
						count_pixels_under_threshold;///(LARGHEZZA*ALTEZZA);// * (128 - thresholdOffset);

				unsigned int probability_over_threshold =
						count_pixels_over_threshold;///(LARGHEZZA*ALTEZZA);// * (128 + thresholdOffset);

				computedScore = (probability_under_threshold *
						(meanUnderThreshold - globalMean)*(meanUnderThreshold - globalMean)  +
						probability_over_threshold *
						(meanOverThreshold - globalMean)*(meanOverThreshold - globalMean))/(LARGHEZZA*ALTEZZA);


				//float probability_under_threshold = count_pixels_under_threshold/(float)(LARGHEZZA*ALTEZZA);

				//float probability_over_threshold = count_pixels_over_threshold/(float)(LARGHEZZA*ALTEZZA);

				//computedScore = probability_under_threshold * (meanUnderThreshold - globalMean)*(meanUnderThreshold - globalMean)  +
				//		probability_over_threshold * (meanOverThreshold - globalMean)*(meanOverThreshold - globalMean);


			}else{
				computedScore = 0;
			}

			scores[128 + thresholdOffset] = computedScore;

		}
		*/

		unsigned long record_id = 0;
		unsigned long record = 0;
		unsigned short count = 0;
		for(count = 0; count < 256; count++){
			if(scores[count] > record){
				record = scores[count];
				record_id = count;
			}
		}
		*best_threshold = record_id;
		*updateThreshold = true;
	}else{
		*updateThreshold = false;
	}

	width_count++;
	if(width_count == LARGHEZZA){
		width_count = 0;
		height_count++;
		if(height_count == ALTEZZA){
			height_count = 0;
		}
	}

	out_stream.write(aValue);
}






