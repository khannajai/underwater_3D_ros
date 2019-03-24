# ROS Catkin workspace for Underwater 3D Reconstruction from acoustic images

## Install dependencies
### On Ubuntu
ROS Melodic Full
```
$ sudo apt install ros-melodic-desktop-full
```

[OpenCV 4.0.1](https://linuxize.com/post/how-to-install-opencv-on-ubuntu-18-04/#disqus_thread)

ImageMagick
```
$ sudo apt install imagemagick
```

## Create catkin workspace
Make and source the catkin workspace
```
$ catkin_make
$ source devel/setup.zsh
```
or
```
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