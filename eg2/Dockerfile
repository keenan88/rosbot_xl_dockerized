FROM osrf/ros:humble-desktop

ENV DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-c"]

# create workspace
RUN mkdir -p /ros2_ws/src
WORKDIR /ros2_ws

RUN apt-get update && apt-get install -y gnome-terminal \
                                         libcanberra-gtk-module \
                                         libcanberra-gtk3-module dbus-x11 \
                                         ros-humble-ros-ign-bridge

RUN git clone https://github.com/husarion/rosbot_xl_ros.git; cd rosbot_xl_ros; git checkout faebae0915d3e3fd8170d1073d88fb1cf460daa4; cd /ros2_ws
RUN git clone https://github.com/husarion/rosbot_hardware_interfaces.git; cd rosbot_hardware_interfaces; git checkout 70eba85bbd8b0a22db778ad723461fba24360464; cd /ros2_ws
RUN git clone https://github.com/husarion/rosbot_controllers.git; cd rosbot_controllers; git checkout 16fe1306206d540f7955e31ecb0e09dba6a0831d; cd /ros2_ws
RUN git clone https://github.com/gazebosim/gz_ros2_control; cd gz_ros2_control; git checkout 29a36e0dadf4c85a5a84560235f164dfea0fcd1e; cd /ros2_ws
RUN git clone https://github.com/husarion/gazebo_worlds.git; cd gazebo_worlds; git checkout f8ab68771bf3154c9f713b2230f64afbc4fbbfc5; cd /ros2_ws

RUN rosdep install --from-paths rosbot_hardware_interfaces rosbot_controllers gz_ros2_control gazebo_worlds -y --ignore-src

ADD ./eg2/ros_entrypoint.sh /container-start.sh
RUN chmod +x /container-start.sh
