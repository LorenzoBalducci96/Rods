#include "contour_finder.h"

#define LARGHEZZA 512
#define ALTEZZA 512



void contours_finder (AXI_STREAM &in_stream, AXI_STREAM &out_stream,
		AXI_STREAM &male_match, AXI_STREAM &female_match, unsigned long counter_area_out[256],
		unsigned int mean_x_position[256], unsigned int mean_y_position[256]) {

	//#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
#pragma HLS INTERFACE axis port=out_stream name=OUTPUT_STREAM
#pragma HLS INTERFACE axis port=in_stream name=INPUT_STREAM
	static unsigned width_count = 0;
	static unsigned height_count = 0;
	static unsigned char previous_row[LARGHEZZA];
	static unsigned char diagonal_pixel;
	static bool previous = false;
	static unsigned short id = 40;
	static bool id_availables[256];

	static unsigned short join[256];
	static unsigned long counter_area[256];
	static unsigned long sum_x_values[256];
	static unsigned long sum_y_values[256];


	static unsigned short first_hole_diameter[256];
	static unsigned short second_hole_diameter[256];
	static unsigned short first_hole_center_x[256];
	static unsigned short first_hole_center_y[256];
	static unsigned short second_hole_center_x[256];
	static unsigned short second_hole_center_y[256];



	static unsigned short probable_new_holes_trigger[LARGHEZZA];
	static unsigned short holes_start_height[LARGHEZZA];
	static unsigned short holes_max_left[LARGHEZZA];
	static unsigned short holes_max_right[LARGHEZZA];
	static unsigned short holes_buffer[LARGHEZZA];



	/*
	static unsigned int minimum_x[256];
	static unsigned int minimum_y[256];
	static unsigned int maximum_x[256];
	static unsigned int maximum_y[256];
	 */

	AXI_VALUE aValue;//stream value
	unsigned char readedVal;//unsigned char stream data value
	unsigned char outputVal;
	union {	unsigned char ival; char oval; } converter;//converter to extract c data
	bool sent_match;

	in_stream.read(aValue);
	sent_match = false;

	if(width_count == 0 && height_count == 0){
		unsigned short count = 0;
		for(count = 0; count < 256; count++){
			counter_area[count] = 0;
			sum_x_values[count] = 0;
			sum_y_values[count] = 0;
			first_hole_center_x[count] = 0;
			second_hole_center_x[count] = 0;
			first_hole_center_y[count] = 0;
			second_hole_center_y[count] = 0;
			first_hole_diameter[count] = 0;
			second_hole_diameter[count] = 0;
			id_availables[count] = true;
		}

		for(count = 0; count < LARGHEZZA; count++){
			previous_row[count] = 0;
			probable_new_holes_trigger[count] = 0;
			holes_max_left[count] = LARGHEZZA - 1;
			holes_max_right[count] = 0;
			holes_start_height[count] = ALTEZZA - 1;

			//minimum_x[count] = LARGHEZZA - 1;
			//minimum_y[count] = ALTEZZA - 1;
			//maximum_x[count] = 0;
			//minimum_y[count] = 0;
		}
	}

	if(height_count == 0){//BUFFERING 1 LINE
		if(aValue.data == 255){
			if(width_count != 0){
				if(previous_row[width_count] != 0){
					previous_row[width_count] = previous_row[width_count - 1];
				}else{
					previous_row[width_count] = id;

					id_availables[id] = false;
					unsigned short search = 40;
					bool found = false;
					while(!found && search < 256){
						if(id_availables[search] == true){
							id = search;
							found = true;
							id_availables[search] = false;
						}
						search = search + 20;
					}
				}
			}else{
				previous_row[width_count] = id;

				id_availables[id] = false;
				unsigned short search = 40;
				bool found = false;
				while(!found && search < 256){
					if(id_availables[search] == true){
						id = search;
						found = true;
						id_availables[search] = false;
					}
					search = search + 20;
				}
			}
		}else{
			previous_row[width_count] = 0;
		}
		male_match.write(generateAxiValue(
				0, width_count, height_count));
		female_match.write(generateAxiValue(
				0, width_count, height_count));
	}else{
		out_stream.write(generateAxiValue(
				previous_row[width_count], width_count, height_count - 1));

		counter_area[previous_row[width_count]]++;
		sum_x_values[previous_row[width_count]] += width_count;
		sum_y_values[previous_row[width_count]] += height_count;

		if(width_count == 172 && height_count == 216){
			int c = 0;
		}

		if(aValue.data == 255){
			if(previous_row[width_count] != 0){//it's equal to the upper
				if(width_count != 0){
					if(previous_row[width_count - 1] != 0 && previous_row[width_count - 1] != previous_row[width_count]){

						diagonal_pixel = previous_row[width_count];

						unsigned char to_delete = previous_row[width_count - 1];

						male_match.write(generateAxiValue(
								previous_row[width_count], width_count, height_count));
						female_match.write(generateAxiValue(
								to_delete, width_count, height_count));
						sent_match = true;

						id_availables[to_delete] = true;

						//TODO qui aggiorno probable_new_holes_trigger con previous_row
						//i buchi sulle bielle non capitano al primo marked on line ma al successivo
						int count = 0;
						for(count = 0; count < LARGHEZZA; count++){
							if(probable_new_holes_trigger[count] == to_delete){
								probable_new_holes_trigger[count] = previous_row[width_count];
							}
							if(holes_buffer[count] == to_delete){
								holes_buffer[count] = previous_row[width_count];
							}
							if(previous_row[count] == to_delete){
								previous_row[count] = previous_row[width_count];
							}
						}

						counter_area[previous_row[width_count]] += counter_area[to_delete];
						counter_area[to_delete] = 0;
						sum_x_values[previous_row[width_count]] += sum_x_values[to_delete];
						sum_x_values[to_delete] = 0;
						sum_y_values[previous_row[width_count]] += sum_y_values[to_delete];
						sum_y_values[to_delete] = 0;

						if(first_hole_diameter[previous_row[width_count]] == 0){
							if(first_hole_diameter[to_delete] != 0){
								first_hole_diameter[previous_row[width_count]] = first_hole_diameter[to_delete];
								first_hole_center_x[previous_row[width_count]] = first_hole_center_x[to_delete];
								first_hole_center_y[previous_row[width_count]] = first_hole_center_y[to_delete];

								first_hole_diameter[to_delete] = 0;
								first_hole_center_x[to_delete] = 0;
								first_hole_center_y[to_delete] = 0;
							}

							if(second_hole_diameter[to_delete] != 0){
								second_hole_diameter[previous_row[width_count]] = second_hole_diameter[to_delete];
								second_hole_center_x[previous_row[width_count]] = second_hole_center_x[to_delete];
								second_hole_center_y[previous_row[width_count]] = second_hole_center_y[to_delete];

								second_hole_diameter[to_delete] = 0;
								second_hole_center_x[to_delete] = 0;
								second_hole_center_y[to_delete] = 0;
							}
						}else{
							if(first_hole_diameter[to_delete] != 0){
								second_hole_diameter[previous_row[width_count]] = first_hole_diameter[to_delete];
								second_hole_center_x[previous_row[width_count]] = first_hole_center_x[to_delete];
								second_hole_center_y[previous_row[width_count]] = first_hole_center_y[to_delete];

								first_hole_diameter[to_delete] = 0;
								first_hole_center_x[to_delete] = 0;
								first_hole_center_y[to_delete] = 0;
							}
						}
					}else{
						diagonal_pixel = previous_row[width_count];
					}
				}
			}else if(width_count != 0 && previous_row[width_count - 1] != 0){//t's equal to the previous
				diagonal_pixel = previous_row[width_count];
				previous_row[width_count] = previous_row[width_count - 1];
			}else{
				diagonal_pixel = previous_row[width_count];
				previous_row[width_count] = id;

				id_availables[id] = false;
				unsigned short search = 40;
				bool found = false;
				while(!found && search < 256){
					if(id_availables[search] == true){
						id = search;
						found = true;
						id_availables[search] = false;
					}
					search = search + 20;
				}
			}
		}else{
			if(diagonal_pixel != 0 &&
					previous_row[width_count] != 0 &&
					//previous_row[width_count + 1] != 0 &&
					previous_row[width_count - 1] != 0){
				probable_new_holes_trigger[width_count] = previous_row[width_count - 1];
			}

			if(width_count != 0){
				if(probable_new_holes_trigger[width_count - 1] != 0){//prima ho triggerato un possibile buco
					if(previous_row[width_count] != 0){//sopra e chiuso quindi c'e biella
						probable_new_holes_trigger[width_count] = probable_new_holes_trigger[width_count - 1];//marca anche qui il possibile buco
					}
				}
			}

			diagonal_pixel = previous_row[width_count];
			previous_row[width_count] = 0;
		}

		if(!sent_match){
			male_match.write(generateAxiValue(
					0, width_count, height_count));
			female_match.write(generateAxiValue(
					0, width_count, height_count));
		}
	}

	width_count++;
	if(width_count == LARGHEZZA){
		int count_diameter = 0;
		if(height_count == 310){
			int c = 0;
		}

		int count = 0;
		for(count = 0; count < LARGHEZZA; count++){
			//trigger new line
			if(probable_new_holes_trigger[count] != 0){
				int count_for_new_holes = count;

				while(probable_new_holes_trigger[count_for_new_holes] != 0 && count_for_new_holes < LARGHEZZA){//reach the end of the line hole
					count_for_new_holes++;
				}
				if(count_for_new_holes != LARGHEZZA){
					if(previous_row[count_for_new_holes] == probable_new_holes_trigger[count]){
						int count_for_copy = count;
						for(count_for_copy = count; count_for_copy < count_for_new_holes; count_for_copy++){
							holes_buffer[count_for_copy] = probable_new_holes_trigger[count];
							holes_start_height[count_for_copy] = height_count;
							holes_max_left[count_for_copy] = count;
							holes_max_right[count_for_copy] = count_for_new_holes;
						}
					}
				}
				count = count_for_new_holes;
			}

			if(holes_buffer[count] != 0){
				bool valid = false;
				unsigned short start = LARGHEZZA;
				unsigned short end = 0;
				//check if hole is complete
				bool correctly_closed_hole = true;
				int count_closing = count;
				while(holes_buffer[count_closing] != 0){
					if(previous_row[count_closing] != holes_buffer[count_closing]){
						correctly_closed_hole = false;
					}
					count_closing++;
				}
				if(correctly_closed_hole){//TODO hole is complete
					if(first_hole_center_x[holes_buffer[count]] == 0){
						first_hole_center_x[holes_buffer[count]] = (holes_max_right[count] + holes_max_left[count]) / 2;
						first_hole_center_y[holes_buffer[count]] = (holes_start_height[count] + height_count) / 2;
						first_hole_diameter[holes_buffer[count]] = height_count - holes_start_height[count];
					}else{
						second_hole_center_x[holes_buffer[count]] = (holes_max_right[count] + holes_max_left[count]) / 2;
						second_hole_center_y[holes_buffer[count]] = (holes_start_height[count] + height_count) / 2;
						second_hole_diameter[holes_buffer[count]] = height_count - holes_start_height[count];
					}
					count_closing = count;
					while(holes_buffer[count_closing] != 0 && count_closing < LARGHEZZA){
						holes_buffer[count_closing] = 0;
						holes_start_height[count_closing] = ALTEZZA - 1;
						holes_max_left[count_closing] = LARGHEZZA - 1;
						holes_max_right[count_closing] = 0;

						//TODO vefica metadati eventualmente cancellali ma non è necessario
						count_closing++;
					}
				}

				//if is not completed circle...maybe i have to shrink...in case there is another circle
				if(!correctly_closed_hole){
					int count_enlarge_right = count;
					int count_enlarge_left = count;

					//enlarging
					while(previous_row[count_enlarge_right] == 0 && count_enlarge_right < LARGHEZZA - 1){
						holes_buffer[count_enlarge_right] = holes_buffer[count];
						count_enlarge_right++;
					}
					while(previous_row[count_enlarge_left] == 0 && count_enlarge_left > 0){
						holes_buffer[count_enlarge_left] = holes_buffer[count];
						count_enlarge_left--;
					}

					bool valid = true;
					//check valid after enlarging...if i found a 42 instead of 40 i have to cancel hole
					if(previous_row[count_enlarge_right] != holes_buffer[count] ||
							previous_row[count_enlarge_left] != holes_buffer[count]){
						valid = false;
						int count_delete = count_enlarge_left;
						for(count_delete = count_enlarge_left; count_delete < count_enlarge_right; count_delete++){
							holes_buffer[count_delete] = 0;
						}
					}

					if(valid){
						int reshape_metadata = 0;
						for(reshape_metadata = count_enlarge_left; reshape_metadata < count_enlarge_right; reshape_metadata++){
							if(holes_max_left[reshape_metadata] > count_enlarge_left){
								holes_max_left[reshape_metadata] = count_enlarge_left;
							}
							if(holes_max_right[reshape_metadata] < count_enlarge_right){
								holes_max_right[reshape_metadata] = count_enlarge_right;
							}
							holes_start_height[reshape_metadata] = holes_start_height[count];
							holes_start_height[reshape_metadata] = holes_start_height[count];
						}
					}

					int count_shrink = count;
					while(holes_buffer[count_shrink] != 0){
						if(previous_row[count_shrink] != 0 &&
								holes_buffer[count_shrink] == holes_buffer[count]){
							holes_buffer[count_shrink] = 0;
							holes_max_left[count_shrink] = LARGHEZZA - 1;
							holes_max_right[count_shrink] = 0;
							holes_start_height[count_shrink] = ALTEZZA - 1;
						}
						count_shrink++;
					}
					count = count_enlarge_right;
				}
			}
		}

		count = 0;
		for(count = 0; count < LARGHEZZA; count++){
			probable_new_holes_trigger[count] = 0;
		}
		diagonal_pixel = 0;
		width_count = 0;
		height_count++;
		if(height_count == ALTEZZA){
			height_count = 0;
		}
	}

	//in the last pixel...this piece of code doesn't run on the first pixel but on the last
	if(width_count == 0 && height_count == 0){
		unsigned int count = 0;
		for(count = 0; count < LARGHEZZA; count++){
			out_stream.write(generateAxiValue(
					previous_row[count], count, ALTEZZA - 1));
			counter_area[previous_row[count]]++;
			sum_x_values[previous_row[count]] += count;
			sum_y_values[previous_row[count]] += ALTEZZA - 1;
		}
		for(count = 0; count < 256; count++){
			counter_area_out[count] = counter_area[count];
			if(counter_area[count] != 0){
				mean_x_position[count] = sum_x_values[count]/counter_area[count];
				mean_y_position[count] = sum_y_values[count]/counter_area[count];
			}else{
				mean_x_position[count] = 0;
				mean_y_position[count] = 0;
			}
		}
	}
}


AXI_VALUE generateAxiValue(unsigned char value,//AXIVideoStream protocol
		unsigned short width_count, unsigned short heigth_count){

	//heigth_count = heigth_count - 1;//on 1 is not call
	AXI_VALUE aValue;
	aValue.data = value;
	if(width_count == 0 && heigth_count == 0){
		aValue.user = 1;
	}else{
		aValue.user = 0;
	}
	if(width_count == LARGHEZZA - 1){
		aValue.last = 1;
	}else{
		aValue.last = 0;
	}
	aValue.strb = -1;
	aValue.keep = 15; //e.strb;
	aValue.id = 0;
	aValue.dest = 0;
	return aValue;
}

unsigned short getAvailableId(bool id_availables[256]){
	int count = 1;
	for(count = 1; count < 256; count++){
		if(id_availables[count] == true){
			id_availables[count] = false;
			return id_availables[count];
		}
	}
}



