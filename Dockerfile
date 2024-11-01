# Use the official ROS Noetic image as the base
FROM osrf/ros:noetic-desktop

# Update the package list
RUN apt-get update

# Install gstreamer and its Python bindings
RUN apt-get install -y gstreamer1.0-tools python3-gst-1.0

# Install pip for Python3
RUN apt-get install -y python3-pip

# Install portaudio19-dev
RUN apt-get install -y portaudio19-dev

# Install libglfw3
RUN apt-get install -y libglfw3 libglfw3-dev

# Install libuvc
RUN apt-get install -y libuvc-dev

# Install vim-common for xxd
RUN apt-get install -y vim-common

# Install libglew
RUN apt-get install -y libglew-dev

# Install net-tools for ifconfig
RUN apt-get install net-tools

# Install tkinter for Python 3
RUN apt-get install -y python3-tk

# Install catkin tools
RUN apt-get install -y ros-noetic-catkin

# Uncomment the following lines to install the necessary ROS packages for Gazebo if simulation is missing
# RUN apt-get install curl 
# RUN curl -sSL http://get.gazebosim.org | sh
# RUN apt-get install -y ros-noetic-gazebo-ros-pkgs
# RUN apt-get install -y ros-noetic-robot-controllers
# RUN export robot_controllers_DIR=/opt/ros/noetic/share/robot_controllers/cmake
# RUN sudo apt-get install -y ros-noetic-fetch-description
# RUN apt install -y ros-noetic-rgbd-launch
# RUN apt-get install -y ros-noetic-fetch-navigation

# Install Python dependencies
RUN pip3 install pyusb speechrecognition pyaudio pixel_ring pyserial

# Copy your ROS workspaces into the Docker image
COPY /opt/quori /opt/quori/
COPY /opt/quori_embedded /opt/quori_embedded/
COPY /opt/arduino-1.8.16 /opt/arduino-1.8.16/
COPY /opt/AstraSDK-v2.1.1-24f74b8b15-20200426T014025Z-Ubuntu18.04-x86_64 /opt/AstraSDK-v2.1.1-24f74b8b15-20200426T014025Z-Ubuntu18.04-x86_64/
COPY /opt/ros /opt/ros/
COPY /opt/usb_4_mic_array /opt/usb_4_mic_array/

# Set the working directory to your catkin workspace
WORKDIR /opt/quori

# Build the catkin workspace
RUN /bin/bash -c "source /opt/ros/noetic/setup.bash && catkin_make"

# Source the ROS setup script
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
RUN echo "source /opt/quori/devel/setup.bash" >> ~/.bashrc

# Set the ROS_MASTER_URI environment variable
# Change these IP's so that the 
ENV ROS_MASTER_URI=http://[Quori IP]:11311 

ENV ROS_IP=[GUI Machine IP]

# Set the working directory
WORKDIR /root

# Set the DISPLAY environment variable
ENV DISPLAY=:0

# Set the entrypoint to bash
ENTRYPOINT ["/bin/bash"]
