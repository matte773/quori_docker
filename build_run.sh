#!/bin/bash

# Building
sudo docker build --no-cache -t quori-ros-image --build-arg SSH_PRIVATE_KEY="$(cat ~/.ssh/id_ed25519)" --build-arg ROBOT_IP=$(cat robot_ip.txt) --build-arg GUI_IP=$(cat gui_ip.txt) .

# Running 
sudo docker run -it --rm -e DISPLAY=$DISPLAY --privileged --network host -v /dev:/dev -v /tmp/.X11-unix:/tmp/.X11-unix quori-ros-image
