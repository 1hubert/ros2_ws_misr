#!/bin/bash

sudo apt-get update
cd ~/ros2_ws
test -d src/pilz_ros2 || git clone -b jazzy https://github.com/LRMPUT/pilz_ros2.git src/pilz_ros2
source /opt/ros/jazzy/setup.bash
rosdep update --rosdistro jazzy
rosdep install --from-paths src --ignore-src -y

# colcon build --symlink-install