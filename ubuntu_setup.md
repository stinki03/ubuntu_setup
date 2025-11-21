# 🛠 Setup Script para HTB y Ubuntu

Este script instala varias herramientas útiles para **Hack The Box (HTB)** y personaliza tu entorno de Ubuntu con temas e iconos.

---

## 🔹 Paquetes instalados

* **Numix Theme e Icons** – Mejor apariencia de escritorio.
* **Vim** – Editor de texto potente.
* **locate** – Para buscar archivos rápidamente.
* **Unity Tweak Tool** – Personalización de Unity/GNOME.
* **nmap** – Escaneo de redes.
* **Herramientas básicas para práctica HTB** – Como `net-tools`, `curl`, `wget`, `tcpdump`, etc.

---

## ⚡ Bash Script

Guarda esto como `setup_htb.sh` y ejecútalo:

```bash
#!/bin/bash

# Actualizar repositorios
sudo apt update
sudo apt upgrade -y

# Instalar Vim y locate
sudo apt install -y vim mlocate

# Actualizar la base de datos de locate
sudo updatedb

# Instalar Unity Tweak Tool
sudo apt install -y unity-tweak-tool

# Instalar nmap
sudo apt install -y nmap

# Instalar Net-tools y otras herramientas de red básicas
sudo apt install -y net-tools curl wget tcpdump

# Instalar Numix Theme e Icons
sudo apt install -y numix-gtk-theme numix-icon-theme numix-icon-theme-circle

# Mensaje final
echo "Instalación completada. Reinicia tu sesión para que Numix Theme se aplique correctamente."
```

---

## ✅ Cómo ejecutar el script

```bash
chmod +x setup_htb.sh
./setup_htb.sh
```

> Esto actualizará tu sistema y descargará todas las herramientas y temas mencionados.

---

## 📝 Notas

* Recomendado ejecutar en **Ubuntu 20.04 / 22.04**.
* Puedes agregar más herramientas de pentesting según tu flujo de HTB.
* Para aplicar el **Numix Theme**, abre Unity Tweak Tool → Tema → Numix.
