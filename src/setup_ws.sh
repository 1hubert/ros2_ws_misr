#!/bin/bash

sudo apt-get update
cd ~/ros2_ws/src

test -d pilz_ros2 || git clone -b jazzy https://github.com/LRMPUT/pilz_ros2.git
cd pilz_ros2 && git pull origin jazzy

cd ~/ros2_ws
source /opt/ros/jazzy/setup.bash
rosdep update --rosdistro jazzy
rosdep install --from-paths src --ignore-src -y

colcon build --symlink-install