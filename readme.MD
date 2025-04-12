# HM Backend ![HM Backend](https://img.shields.io/badge/version-1.0.0-blue.svg)

## Descripción 📜

HM Backend es una API construida con **FastAPI** para obtener información sobre Pokémon almacenada en una base de datos **MySQL**. La aplicación permite obtener una lista de todos los Pokémon almacenados en la base de datos.

## Características 🌟
- **FastAPI**: Framework web para crear APIs rápidas. ![FastAPI](https://img.shields.io/badge/FastAPI-0077B6?logo=fastapi&logoColor=white)
- **SQLAlchemy**: ORM para interactuar con MySQL. ![SQLAlchemy](https://img.shields.io/badge/SQLAlchemy-5FA7B8?logo=python&logoColor=white)
- **MySQL**: Sistema de gestión de bases de datos relacional. ![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)
- **Pymysql**: Conector para MySQL en Python. ![PyMySQL](https://img.shields.io/badge/PyMySQL-008C8C?logo=pymysql&logoColor=white)
- **Swagger UI**: Interfaz gráfica para probar los endpoints de la API. ![Swagger](https://img.shields.io/badge/Swagger-85EA2D?logo=swagger&logoColor=white)

## Requisitos 📋

Antes de comenzar, asegúrate de tener los siguientes requisitos:

- **Python 3.8+**. ![Python](https://img.shields.io/badge/Python-3.8%2B-blue?logo=python&logoColor=white)
- **MySQL**. ![MySQL](https://img.shields.io/badge/MySQL-8.0%2B-blue?logo=mysql&logoColor=white)
- Dependencias del proyecto.

## Swagger Docs 📋

URL: http://152.53.53.245:8000/docs

## Instalación 🛠️
1. Clona el repositorio:

   ```bash
   git clone https://github.com/ReynierGo/hm-backend.git
   cd hm-backend

2. Para ejecutar el contenedor docker
   ```bash
   docker build -t hm-backend .
   docker run -d -p 8000:8000 hm-backend
