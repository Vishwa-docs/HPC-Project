//
// Created by Vishwa Kumaresh on 11/03/24.
//

#ifndef HPC_PROJECT_FILTER_FUNCTIONS_H
#define HPC_PROJECT_FILTER_FUNCTIONS_H

#include <string>

void apply_sobel_filter(const std::string& filename);
void apply_sobel_filter_no_window(const std::string& filename);

void apply_averaging_filter(const std::string& filename);
void apply_averaging_filter_no_window(const std::string& filename);

#endif //HPC_PROJECT_FILTER_FUNCTIONS_H
