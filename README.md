# 📘 Instalar OpenCV en Ubuntu usando CMake

Guía completa para instalar, compilar y configurar **OpenCV + OpenCV Contrib** en Ubuntu usando CMake.

---

## 🚀 1. Instalar dependencias

```bash
sudo apt update
sudo apt install -y build-essential cmake git pkg-config
sudo apt install -y libjpeg-dev libpng-dev libtiff-dev
sudo apt install -y libavcodec-dev libavformat-dev libswscale-dev
sudo apt install -y libv4l-dev v4l-utils
sudo apt install -y libxvidcore-dev libx264-dev
sudo apt install -y libgtk-3-dev
sudo apt install -y libatlas-base-dev gfortran
sudo apt install -y python3-dev python3-numpy
```

---

## 📥 2. Descargar OpenCV y OpenCV Contrib

```bash
cd ~
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
```

Opcional: seleccionar una versión específica:

```bash
cd opencv
git checkout 4.10.0
cd ../opencv_contrib
git checkout 4.10.0
```

---

## 🏗️ 3. Crear carpeta de compilación

```bash
cd ~/opencv
mkdir build
cd build
```

---

## ⚙️ 4. Configurar con CMake

```bash
cmake -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
      -D BUILD_opencv_python3=ON \
      -D BUILD_EXAMPLES=ON \
      ..
```

> Los `..` al final indican que el `CMakeLists.txt` está en el directorio padre (`~/opencv`).

---

## 🧱 5. Compilar OpenCV

```bash
make -j$(nproc)
```

---

## 📦 6. Instalar OpenCV

```bash
sudo make install
sudo ldconfig
```

---

## 🧪 7. Verificar instalación

```bash
pkg-config --modversion opencv4
```

O compilar un programa simple:

```bash
g++ test.cpp -o test `pkg-config --cflags --libs opencv4`
```

---

## 📁 8. Ejemplo de CMakeLists.txt

```cmake
cmake_minimum_required(VERSION 3.10)
project(opencv_test)

find_package(OpenCV REQUIRED)

add_executable(test main.cpp)
target_link_libraries(test ${OpenCV_LIBS})
```

---

## 📝 Notas importantes

* OpenCV se instala en **/usr/local**
* Puedes optimizar la compilación con:

  * `-D ENABLE_FAST_MATH=1`
  * `-D WITH_OPENMP=ON`
* Se puede habilitar CUDA si tienes GPU NVIDIA
