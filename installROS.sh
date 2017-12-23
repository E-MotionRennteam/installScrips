#!/bin/bash

# Add ROS to Package List
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Add Key
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# Make Update
sudo apt-get update

# Install ROS Kintetic Desktop Full 
sudo apt-get install ros-kinetic-desktop-full

# Initialize rosdep
sudo rosdep init
rosdep update

# Environment setup
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
echo "source /opt/ros/kinetic/setup.zsh" >> ~/.zshrc
source ~/.zshrc

# Dependencies for building packages
sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential
