#include <iostream>
#include "dataloader/dataloader.hpp"
#include "viewer/viewer.hpp"
#include "open3d/Open3D.h"
#include "Eigen/Core"

int main(int argc, char *argv[]) {

  if (argc != 2) {
    std::cerr << "[ERROR] Please provide the path to a pointcloud" << std::endl;
    return 1;
  }
  
  dataset::LaserScanDataset dataset(argv[1]);

  for (int i = 0; i <dataset.size(); i = i + 100) {
    viewCloud(dataset[i]);
  }

  std::cout << "\n\n";
  std::cout << dataset.size();
  std::cout << "\n";

  return 0;
}