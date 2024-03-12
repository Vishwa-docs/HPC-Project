//
// Created by Vishwa Kumaresh on 11/03/24.
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

bool isImageExtension(const string& filename) {
    vector<string> extensions = {"jpg", "jpeg", "png", "bmp", "tiff"};
    string ext = filename.substr(filename.rfind('.') + 1);
    transform(ext.begin(), ext.end(), ext.begin(), ::tolower);
    return find(extensions.begin(), extensions.end(), ext) != extensions.end();
}

void display_image(const std::string& filename) {
    cv::Mat image = cv::imread(filename, cv::IMREAD_COLOR);

    if (!image.data) {
        std::cout << "Error loading image!" << std::endl;
        return;
    }

    cv::namedWindow("Image", cv::WINDOW_NORMAL);
    cv::imshow("Image", image);

    cv::waitKey(0);

    cv::destroyWindow("Image");
}


void display_images_from_directory(const string& directory, int limit = 10) {
    DIR* dir;
    struct dirent* ent;
    int count = 0;

    if ((dir = opendir(directory.c_str())) != nullptr) {
        while ((ent = readdir(dir)) != nullptr && count < limit) {
            string filename(ent->d_name);

            if (isImageExtension(filename)) {
                string full_path = directory + "/" + filename;
                Mat image = imread(full_path, IMREAD_COLOR);

                if (!image.data) {
                    cout << "Error loading image: " << full_path << endl;
                    continue;
                }

                namedWindow("Image", WINDOW_NORMAL);
                imshow("Image", image);
                waitKey(0);
                destroyWindow("Image");

                count++;
            }
        }
        closedir(dir);
    } else {
        cerr << "Error opening directory: " << directory << endl;
    }
}