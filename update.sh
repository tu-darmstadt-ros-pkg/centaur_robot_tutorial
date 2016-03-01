source /opt/ros/indigo/setup.bash

# This should be extended to first check if everything is installed and only do the sudo requiring call when there's anything missing.
echo "Installing needed packages (both ROS package and system dependency .deb packages) ..."

PACKAGES_TO_INSTALL="\
mercurial \
git \
python-rosdep \
python-wstool \
python-catkin-tools \
libnlopt-dev \
ros-$ROS_DISTRO-gazebo5-ros \
ros-$ROS_DISTRO-gazebo5-plugins \
ros-$ROS_DISTRO-desktop \
ros-$ROS_DISTRO-moveit-ros \
ros-$ROS_DISTRO-moveit-simple-controller-manager \
ros-$ROS_DISTRO-hector-nav-msgs \
ros-$ROS_DISTRO-hector-map-tools \
ros-$ROS_DISTRO-driver-base \
ros-$ROS_DISTRO-laser-filters \
ros-$ROS_DISTRO-image-proc \
ros-$ROS_DISTRO-image-transport-plugins \
ros-$ROS_DISTRO-depth-image-proc \
ros-$ROS_DISTRO-ros-control \
ros-$ROS_DISTRO-ros-controllers \
ros-$ROS_DISTRO-effort-controllers \
ros-$ROS_DISTRO-joint-trajectory-controller \
ros-$ROS_DISTRO-joint-state-controller \
ros-$ROS_DISTRO-perception-pcl
ros-$ROS_DISTRO-map-server \
ros-$ROS_DISTRO-amcl \
ros-$ROS_DISTRO-sbpl \
ros-$ROS_DISTRO-perception-pcl \
ros-$ROS_DISTRO-pointcloud-to-laserscan \
ros-$ROS_DISTRO-joy \
ros-$ROS_DISTRO-teleop-twist-joy \
ros-$ROS_DISTRO-costmap-2d \
ros-$ROS_DISTRO-octomap \
ros-$ROS_DISTRO-octomap-msgs \
ros-$ROS_DISTRO-octomap-ros \
ros-$ROS_DISTRO-move-base-msgs \
ros-$ROS_DISTRO-hector-worldmodel-msgs \
ros-$ROS_DISTRO-rqt-joint-trajectory-controller \
ros-$ROS_DISTRO-rqt-robot-steering \
ros-$ROS_DISTRO-robot-localization"

dpkg -s $PACKAGES_TO_INSTALL 2>/dev/null >/dev/null || sudo apt-get -y install $PACKAGES_TO_INSTALL


if ! [ -e "./.rosinstall" ]; then
  wstool init
fi

wstool merge default_packages.rosinstall 

wstool update

# We build using catkin_tools per default
#catkin_make_isolated -DCMAKE_BUILD_TYPE=Release
catkin build -DCMAKE_BUILD_TYPE=Release


PWD=$(pwd)

# Initialization done, print info
cat <<EOF

===================================================================
Workspace initialization completed.
You can setup your current shell's environment to use the workpace
by entering

    source ${PWD}/devel/setup.bash

or by adding this command to your .bashrc file for automatic setup on
each invocation of an interactive shell:

    echo "source ${PWD}/devel/setup.bash" >> ~/.bashrc

You can also modify your workspace config (e.g. for adding additional
repositories or packages) using the wstool command.
===================================================================

EOF