#include <iostream>
#include <pcl/point_types.h>
#include <pcl/io/ply_io.h>
#include <pcl/visualization/pcl_visualizer.h>

int main(int argc, char* argv[]){
    for(int i = 0; i < argc; i++){
        std::cout << argv[i] << std::endl;
    }
}
