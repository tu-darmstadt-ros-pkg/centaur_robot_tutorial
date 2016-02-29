# centaur_robot_tutorial
Repo containing setup related to the 2016 Future of Rescue Simulation workshop (https://staff.fnwi.uva.nl/a.visser/activities/FutureOfRescue/)

# Installation
Make sure you installed ROS Indigo as described in the [ROS Installation instructions](http://wiki.ros.org/indigo/Installation/Ubuntu).

Add the OSRF repository to your system to allow the use of newer Gazebo versions. This is described [here](http://gazebosim.org/tutorials?tut=install_ubuntu&cat=install).

Enter a folder of your choice (a good choice is the home folder) and check out this repo:
```
git clone https://github.com/tu-darmstadt-ros-pkg/centaur_robot_tutorial.git
```
Enter folder and run the update script:
```
cd centaur_robot_tutorial
./update.sh
```
The script creates a workspace, installs dependencies, clones multiple repositories and builds them using [catkin tools](https://catkin-tools.readthedocs.org/en/latest/quick_start.html)
