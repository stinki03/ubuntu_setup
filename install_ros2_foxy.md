Aquí tienes un ejemplo de archivo `README.md` acompañado de un script Bash para instalar ROS2 Foxy en Ubuntu 20.04 de forma automática. El script sigue las instrucciones oficiales y puedes copiarlo directamente a tu proyecto.

***

### README.md

```markdown
# Instalación automática de ROS2 Foxy en Ubuntu 20.04

Este repositorio contiene un script de instalación para configurar rápidamente ROS2 Foxy en un entorno limpio de Ubuntu 20.04.

## Uso

1. Da permisos de ejecución al script:

   ```
   chmod +x install_ros2_foxy.sh
   ```

2. Ejecútalo con privilegios de superusuario:

   ```
   sudo ./install_ros2_foxy.sh
   ```

3. Cuando termine, cierra y abre la terminal (o ejecuta `source ~/.bashrc`) para cargar los cambios.

---

### Contenido de install_ros2_foxy.sh

```
#!/bin/bash
set -e

# Configura repositorios y claves
sudo apt update && sudo apt install -y curl gnupg2 lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Instala ROS2 Foxy
sudo apt update
sudo apt install -y ros-foxy-desktop

# Inicializa rosdep (útil para gestión de dependencias)
sudo apt install -y python3-rosdep
sudo rosdep init || true
rosdep update

# Añade sourcing automático a ~/.bashrc
echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc
source ~/.bashrc

echo "Instalación completada. Reinicia tu terminal para aplicar cambios."
```

---

Este script instala ROS2 Foxy, ajusta tu entorno para usarlo siempre que abras una terminal y es seguro para un entorno estándar de Ubuntu 20.04. Puedes editarlo para instalar metapaquetes diferentes (por ejemplo, `ros-foxy-ros-base` en vez de `ros-foxy-desktop`), si prefieres una instalación más ligera[web:83][web:90][web:93].

[1](https://docs.ros.org/en/foxy/Installation/Ubuntu-Install-Debians.html)
[2](https://www.youtube.com/watch?v=NhnX3aeruHs)
[3](https://prezi.com/p/ftvoa04k4c5a/instalacion-y-uso-de-ros2-foxy-en-ubuntu-2004/)
[4](https://github.com/adamjvr/ros2-bash)
[5](https://docs.elephantrobotics.com/docs/myarm-pi-300-en/12-ApplicationBaseROS/12.2-ROS2/12.2.1-InstallationOfROS2.html)
[6](https://davesroboshack.com/the-robot-operating-system-ros/installing-ros2-foxy/)
[7](https://automaticaddison.com/how-to-set-up-a-ros2-project-for-python-foxy-fitzroy/)
[8](http://www.yahboom.net/public/upload/upload-html/1700724596/2.ROS2%20install%20Foxy.html)
[9](https://docs.ros.org/en/foxy/Tutorials/Beginner-CLI-Tools/Configuring-ROS2-Environment.html)
[10](https://docs.elephantrobotics.com/docs/mecharm-pi-en/12-ApplicationBaseROS/12.2-ROS2/12.2.1-InstallationOfROS2.html)
[11](https://www.theconstruct.ai/ubuntu-20-04-ros2-foxy-install-tutorial/)
[12](https://www.reddit.com/r/ROS/comments/m0zl3w/trouble_installing_ros2_foxy/)
[13](https://www.harshmittal.com/tutorials/ROS2-Foxy-Installation-With-ROS1/)
[14](https://www.youtube.com/watch?v=2YfzByFQCUw)
[15](https://docs.ros.org/en/foxy/Installation.html)
[16](https://github.com/Tiryoh/ros2_setup_scripts_ubuntu)
[17](https://www.youtube.com/watch?v=fxRWY0j3p_U)
[18](https://docs.ros.org/en/foxy/Tutorials/Beginner-Client-Libraries/Creating-A-Workspace/Creating-A-Workspace.html)
[19](https://docs.ros.org/en/dashing/Installation/Ubuntu-Install-Binary.html)
[20](https://daobook.github.io/ros2-docs/foxy/Installation/Windows-Development-Setup.html)
