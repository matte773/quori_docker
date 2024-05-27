These are the current commands for building and running the virtualized Quori workspace and the ROS Bridge
If you havent previously installed the ros bridge start with this 


# Install ROS Bridge 
Follow the instructions at https://github.com/matte773/ros-humble-ros1-bridge-builder


# Pre-Built Docker Image
A pre-built docker image can be downloaded from here:
https://drive.google.com/file/d/16CVyFcgHzu82O-MV3zf_bfDrsMiM_I4O/view?usp=drive_link


# Building
```
sudo docker build -t quori-ros-image .
```


# Running

Added hostname stuff:
```
sudo docker run -it --rm -e DISPLAY=$DISPLAY --privileged --network host -v /dev:/dev -v /tmp/.X11-unix:/tmp/.X11-unix quori-ros-image
```


## To open a second terminal
```
sudo docker ps
sudo docker exec -it [CONTAINER ID] bash 
```


## Bridge Commands
```
ros2 run ros1_bridge dynamic_bridge --bridge-all-topics
```
