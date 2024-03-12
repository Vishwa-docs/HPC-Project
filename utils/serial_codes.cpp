//
// Created by Vishwa Kumaresh on 12/03/24.
//

#include "display_functions.h"
#include "filter_functions.h"

#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <iostream>
#include <string>
#include <vector>
#include <dirent.h>
#include <sys/types.h>

using namespace cv;
using namespace std;


void images_from_directory_with_filter(const std::string& directory, int limit, void(*filter_function)(const std::string&)) {
    DIR* dir;
    struct dirent* ent;
    int count = 0;

    if ((dir = opendir(directory.c_str())) != nullptr) {
        while ((ent = readdir(dir)) != nullptr && count < limit) {
            std::string filename(ent->d_name);

            if (isImageExtension(filename)) {
                std::string full_path = directory + "/" + filename;
                cv::Mat image = cv::imread(full_path, cv::IMREAD_COLOR);

                if (!image.data) {
                    std::cout << "Error loading image: " << full_path << std::endl;
                    continue;
                }

                if (filter_function) {
                    filter_function(full_path);
                }

                count++;
            }
        }
        closedir(dir);
    } else {
        std::cerr << "Error opening directory: " << directory << std::endl;
    }
}
