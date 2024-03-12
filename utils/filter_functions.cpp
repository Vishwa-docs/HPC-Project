//
// Created by Vishwa Kumaresh on 11/03/24.
//

#include "filter_functions.h"

#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>

void apply_sobel_filter(const std::string& filename) {
    cv::Mat image = cv::imread(filename, cv::IMREAD_GRAYSCALE);

    if (!image.data) {
        std::cout << "Error loading image!" << std::endl;
        return;
    }

    cv::Mat sobel_x, sobel_y;
    cv::Sobel(image, sobel_x, CV_16S, 1, 0);
    cv::Sobel(image, sobel_y, CV_16S, 0, 1);

    cv::convertScaleAbs(sobel_x, sobel_x, 1, 0); // Convert back to CV_8U for display
    cv::convertScaleAbs(sobel_y, sobel_y, 1, 0);

    cv::Mat sobel_combined;
    cv::vconcat(image, sobel_x, sobel_combined);
    cv::vconcat(sobel_combined, sobel_y, sobel_combined);

    cv::namedWindow("Sobel Filter", cv::WINDOW_NORMAL);
    cv::imshow("Sobel Filter", sobel_combined);

    cv::waitKey(0);

    cv::destroyWindow("Sobel Filter");
}

void apply_sobel_filter_serial(const std::string& filename) {
    cv::Mat image = cv::imread(filename, cv::IMREAD_GRAYSCALE);

    if (!image.data) {
        std::cout << "Error loading image!" << std::endl;
        return;
    }

    cv::Mat sobel_x, sobel_y;
    cv::Sobel(image, sobel_x, CV_16S, 1, 0);
    cv::Sobel(image, sobel_y, CV_16S, 0, 1);

    cv::convertScaleAbs(sobel_x, sobel_x, 1, 0); // Convert back to CV_8U for display
    cv::convertScaleAbs(sobel_y, sobel_y, 1, 0);

    cv::Mat sobel_combined;
    cv::vconcat(image, sobel_x, sobel_combined);
    cv::vconcat(sobel_combined, sobel_y, sobel_combined);

    cv::destroyWindow("Sobel Filter");
}
