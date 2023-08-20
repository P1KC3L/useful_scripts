##SET LOCALE
locale  # check for UTF-8
sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
locale  # verify settings

##SETUP SOURCES
#Enable Ubuntu Universe repository
sudo apt install software-properties-common -y
sudo add-apt-repository universe
#Add the ROS 2 GPG key
sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
#Add repository to the sources list
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

##INSTALL ROS 2
sudo apt update && sudo apt full-upgrade -y
sudo apt install ros-humble-desktop-full -y
sudo apt install ros-humble-gazebo-ros-pkgs -y

##SETUP THE ENVIRONMENT
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
