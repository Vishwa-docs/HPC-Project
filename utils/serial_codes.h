//
// Created by Vishwa Kumaresh on 12/03/24.
//

#ifndef HPC_PROJECT_SERIAL_CODES_H
#define HPC_PROJECT_SERIAL_CODES_H

#include <string>
#include <opencv2/opencv.hpp>

void images_from_directory_with_filter(const std::string& directory, int limit, void(*filter_function)(const std::string&));

#endif //HPC_PROJECT_SERIAL_CODES_H
