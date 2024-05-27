These are the current commands for building and running the virtualized Quori workspace and the ROS Bridge
If you havent previously installed the ros bridge start with this 

# Install ROS Bridge 
Follow the instructions at https://github.com/matte773/ros-humble-ros1-bridge-builder

# Building:
```
sudo docker build -t quori-ros-image .
```

# Running: 

V1:
sudo docker run -it --rm --privileged -e DISPLAY=$DISPLAY --device=/dev/quori/base --device=/dev/quori/waist --device=/dev/quori/left_arm --device=/dev/quori/right_arm --device=/dev/input/js0 -v /tmp/.X11-unix:/tmp/.X11-unix quori-ros-image

V2:
sudo docker run -it --rm -e DISPLAY=$DISPLAY --privileged -v /dev:/dev -v /tmp/.X11-unix:/tmp/.X11-unix quori-ros-image

## --> V3 Added hostname stuff:
```
sudo docker run -it --rm -e DISPLAY=$DISPLAY --privileged --network host -v /dev:/dev -v /tmp/.X11-unix:/tmp/.X11-unix quori-ros-image
```

## --> To open a second terminal:
```
sudo docker ps
sudo docker exec -it [CONTAINER ID] bash 
```

## --> Bridge Commands:
```
ros2 run ros1_bridge dynamic_bridge --bridge-all-topics
```
