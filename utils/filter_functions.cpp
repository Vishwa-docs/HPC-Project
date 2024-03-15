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

void apply_sobel_filter_no_window(const std::string& filename) {
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

////////////////////////////////////////////////////////////////

// Independent Filters
void apply_averaging_filter(const std::string& filename){
    cv::Mat image = cv::imread(filename, cv::IMREAD_GRAYSCALE);

    if (!image.data) {
        std::cout << "Error loading image!" << std::endl;
        return;
    }

    // Image Dimensions
    int m = image.rows;
    int n = image.cols;

    cv::Mat mask = cv::Mat::ones(3, 3, CV_32F) / 9.0;

    // Create output image
    cv::Mat img_new(m, n, CV_8UC1);

    // Convolve the mask over the image
    for (int i = 1; i < m - 1; i++) {
        for (int j = 1; j < n - 1; j++) {
            float temp = 0.0;
            for (int ki = -1; ki <= 1; ki++) {
                for (int kj = -1; kj <= 1; kj++) {
                    temp += image.at<uchar>(i + ki, j + kj) * mask.at<float>(ki + 1, kj + 1);
                }
            }
            img_new.at<uchar>(i, j) = cv::saturate_cast<uchar>(temp);
        }
    }

    cv::namedWindow("Averaging Filter", cv::WINDOW_NORMAL);
    cv::imshow("Averaging Filter", img_new);

    cv::waitKey(0);

    cv::destroyWindow("Averaging Filter");
}

void apply_averaging_filter_no_window(const std::string& filename){
    cv::Mat image = cv::imread(filename, cv::IMREAD_GRAYSCALE);

    if (!image.data) {
        std::cout << "Error loading image!" << std::endl;
        return;
    }

    // Image Dimensions
    int m = image.rows;
    int n = image.cols;

    cv::Mat mask = cv::Mat::ones(3, 3, CV_32F) / 9.0;

    // Create output image
    cv::Mat img_new(m, n, CV_8UC1);

    // Convolve the mask over the image
    for (int i = 1; i < m - 1; i++) {
        for (int j = 1; j < n - 1; j++) {
            float temp = 0.0;
            for (int ki = -1; ki <= 1; ki++) {
                for (int kj = -1; kj <= 1; kj++) {
                    temp += image.at<uchar>(i + ki, j + kj) * mask.at<float>(ki + 1, kj + 1);
                }
            }
            img_new.at<uchar>(i, j) = cv::saturate_cast<uchar>(temp);
        }
    }
}