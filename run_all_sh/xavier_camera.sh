#!/ bin/bash

source /opt/ros/melodic/setup.bash
source ~/catkin_ws/devel/setup.bash
export ROS_MATER_URI=http://192.168.1.4:11311
export ROS_HOSTNAME=192.168.1.5

video=0
if [[ -e /dev/video0 ]]; then
	video=0
elif [[ -e /dev/video1 ]]; then
	video=1
elif [[ -e /dev/video2 ]]; then
	video=2
fi

roslaunch camera_degree camera.launch input:="v4l2;///dev/video$video"