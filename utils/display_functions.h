//
// Created by Vishwa Kumaresh on 11/03/24.
//

#ifndef HPC_PROJECT_DISPLAY_FUNCTIONS_H
#define HPC_PROJECT_DISPLAY_FUNCTIONS_H

#include <string>
#include <opencv2/opencv.hpp>

void display_image(const std::string& filename);
void display_images_from_directory(const std::string& directory, int limit);
void display_images_from_directory_with_filter(const std::string& directory, int limit, void(*filter_function)(const std::string&));

#endif //HPC_PROJECT_DISPLAY_FUNCTIONS_H