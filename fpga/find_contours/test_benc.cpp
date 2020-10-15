#include "hls_opencv.h"
#include "contour_finder.h"

int main() {
  cv::Mat src = cv::imread("rods_b.bmp", cv::IMREAD_GRAYSCALE);
  cv::Mat dst = src;
  cv::Mat male_matrix = src;
  cv::Mat female_matrix = src;

  hls::stream<ap_axiu<8,1,1,1>> stream_in, stream_out, male_match, female_match;
  unsigned long counter_area[256];
  unsigned int mean_x_position[256];
  unsigned int mean_y_position[256];

  cvMat2AXIvideo(src, stream_in);

  int count = 0;
  for(count = 0; count < 512*512; count++){
	  contours_finder(stream_in, stream_out, male_match, female_match,
			  counter_area, mean_x_position, mean_y_position);
  }

  AXIvideo2cvMat(stream_out, dst);
  cv::imwrite("output_b.bmp", dst);
  AXIvideo2cvMat(male_match, male_matrix);
  cv::imwrite("male_match.bmp", dst);
  AXIvideo2cvMat(female_match,female_matrix);
  cv::imwrite("female_match.bmp", dst);




  return 0;
}
