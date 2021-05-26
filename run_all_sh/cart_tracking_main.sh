#!/ bin/bash

source /opt/ros/melodic/setup.bash
source ~/Autonomous-Cart-Project-main/devel/setup.bash

rosnode kill -a
sleep 2
./xavier_camera.sh &
sshpass -p "0000" ssh user@192.168.1.5 -o StrictHostKeyChecking=no << !
	./cart_control.sh
!