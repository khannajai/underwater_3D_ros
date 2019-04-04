# ROS Catkin workspace for Underwater 3D Reconstruction from acoustic images

## Install dependencies
### On Ubuntu
ROS Melodic Desktop Full
```
$ sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
$ sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
$ sudo apt update && sudo apt install ros-melodic-desktop-full
```

ImageMagick
```
$ sudo apt install imagemagick
```

## Create catkin workspace
Make and source the catkin workspace
```
$ catkin_make
$ echo "source $PWD/devel/setup.zsh" >> ~/.zshrc
$ echo "export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$PWD/external"
$ source ~/.zshrc
```

## Run nodes
Convert polar image to cartesian
```
$ rosrun cartesian_transform cartesian_transform.py <sensor_msgs/Image topic>
```
Convert and publish image
```
$ rosrun cartesian_transform image_converter node
```