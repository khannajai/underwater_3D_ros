# ROS Catkin workspace for Underwater 3D Reconstruction from acoustic images

## Install dependencies for Ubuntu

ROS Melodic Full, OpenCV 4.0.1, imagemagick

## Create catkin workspace for ROS
Make and source the catkin workspace
```
$ source devel/setup.zsh
or
$ source devel/setup.bash
```
Add external packages to `ROS_PACKAGE_PATH`
```
$ export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$PWD/external
```
Alternatively, add the above commands to your `.zshrc` or `.bashrc`, in order to not run them 
again and again.

## Run nodes
Convert polar image to cartesian
```
$ rosrun cartesian_transform cartesian_transform.py
```
Convert and publish image
```
$ rosrun cartesian_transform image_converter node
```

## Run in Docker