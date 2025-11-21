# 🖤 Primer Proyecto OpenCV en C++

Guía para crear, compilar y ejecutar tu primer programa en **C++ usando OpenCV** con CMake.

---

## 📁 Estructura del proyecto

```
mi_proyecto/
├── CMakeLists.txt
└── main.cpp
```

**main.cpp**:

```cpp
#include <opencv2/opencv.hpp>
using namespace cv;

int main() {
    Mat img = Mat::zeros(400, 400, CV_8UC3);
    putText(img, "OpenCV OK!", Point(50,200), FONT_HERSHEY_SIMPLEX, 1, Scalar(0,255,0), 2);
    imshow("Test", img);
    waitKey(0);
    return 0;
}
```

**CMakeLists.txt**:

```cmake
cmake_minimum_required(VERSION 3.10)
project(test_opencv)

find_package(OpenCV REQUIRED)

add_executable(test main.cpp)
target_link_libraries(test ${OpenCV_LIBS})
```

---

## ⚙️ Crear carpeta de build y configurar CMake

Desde la raíz del proyecto:

```bash
cmake -B build -DCMAKE_BUILD_TYPE=Release
```

* `-B build` → crea la carpeta `build` y genera los archivos de compilación.
* `-DCMAKE_BUILD_TYPE=Release` → compila en modo Release.

---

## 🧱 Compilar el proyecto

```bash
cmake --build build
```

* Genera el ejecutable dentro de `build/`.

---

## ▶️ Ejecutar el programa

```bash
./build/test
```

* Verás una ventana negra con el texto **"OpenCV OK!"**.

---

## 💡 Ventajas de usar `-B build` y `--build build`

* Mantiene los archivos de compilación separados del código fuente (*out-of-source build*).
* Fácil limpiar: solo borras la carpeta `build` para recompilar desde cero.

---

Opcional: puedes añadir más flags de CMake para optimización o CUDA si tu sistema lo soporta.
