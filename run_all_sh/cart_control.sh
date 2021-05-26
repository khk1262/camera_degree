#!/ bin/bash

echo "1234" | sudo -S chmod 777 /dev/ttyUSB*
echo "1234" | sudo -S chmod 777 /dev/ttyACM*

source /opt/ros/melodic/setup.bash
source ~/Autonomous-Cart-Project-main/devel/setup.bash

roslaunch control_cart_launch run_all_temp.launch