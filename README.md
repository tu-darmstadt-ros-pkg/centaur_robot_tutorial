# centaur_robot_tutorial

This repository provides a complete workspace setup for running a simulated centaur-style robot (humanoid upper body, in this case tracked base) in Gazebo simulation. Basic capabilities such mobile base navigation and manipulation planning are provided and directly usable as described below under "Usage".

This repository among others has been used for tutorial purposes at the  to the [2016 Future of Rescue Simulation workshop] (https://staff.fnwi.uva.nl/a.visser/activities/FutureOfRescue/)

# Installation
Make sure you installed ROS Indigo as described in the [ROS Installation instructions](http://wiki.ros.org/indigo/Installation/Ubuntu).

Add the OSRF repository to your system to allow the use of newer Gazebo versions. This is described [here](http://gazebosim.org/tutorials?tut=install_ubuntu&cat=install).

Install a Gazebo version of your choice (The tutorial has been well tested with gazebo5):
```
sudo apt-get install ros-$ROS_DISTRO-gazebo5-ros ros-$ROS_DISTRO-gazebo5-plugins ros-$ROS_DISTRO-gazebo5-ros-control
```

Enter a folder of your choice (a good choice is the home folder) and check out this repo:
```
git clone https://github.com/tu-darmstadt-ros-pkg/centaur_robot_tutorial.git -b gazebo7
```
Enter folder and run the update script:
```
cd centaur_robot_tutorial
./update.sh
```
The script creates a workspace, installs dependencies, clones multiple repositories and builds them using [catkin tools](https://catkin-tools.readthedocs.org/en/latest/quick_start.html)

# Usage

See this [repo's wiki for usage instructions](https://github.com/tu-darmstadt-ros-pkg/centaur_robot_tutorial/wiki).
