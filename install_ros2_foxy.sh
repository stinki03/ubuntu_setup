#!/bin/bash
set -e

# Actualizar el sistema y requerimientos previos
sudo apt update && sudo apt install -y curl gnupg2 lsb-release

# Añadir la clave y el repositorio de ROS2
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Instalar ROS2 Foxy Desktop
sudo apt update
sudo apt install -y ros-foxy-desktop

# Instalar e inicializar rosdep
sudo apt install -y python3-rosdep
sudo rosdep init || true
rosdep update

# Configurar el entorno en .bashrc
echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc
source ~/.bashrc

echo "Instalación de ROS2 Foxy completada. Reinicia la terminal para aplicar cambios."
