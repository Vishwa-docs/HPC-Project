#include "display_functions.h"
#include "filter_functions.h"
#include "resize.h"

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

void changeBatchSize(int& limit, int newBatchSize) {
    limit = newBatchSize;
    std::cout << "Batch size changed to: " << newBatchSize << std::endl;
}
