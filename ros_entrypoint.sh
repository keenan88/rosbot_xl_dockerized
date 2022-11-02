#!/bin/bash
set -e


source /opt/ros/humble/setup.bash
cd /ros2_ws
colcon build; source install/setup.bash
  
gnome-terminal -x bash -c "source install/setup.bash; ros2 launch rosbot_xl_gazebo sim.launch.py; exec bash; exec bash"


exec "$@"
