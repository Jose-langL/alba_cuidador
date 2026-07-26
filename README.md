# 👨‍⚕️ ALBA Cuidador

Aplicación desarrollada con **Flutter** y **Firebase** para la gestión y seguimiento del estado de salud de adultos mayores desde la perspectiva del cuidador.

El proyecto está organizado siguiendo una arquitectura inspirada en **Clean Architecture**, facilitando el mantenimiento, la escalabilidad y el trabajo colaborativo entre los integrantes del equipo.

---

# 📑 Índice

- [🛠️ Requisitos para Trabajar Localmente](#️-requisitos-para-trabajar-localmente)
- [📌 Versión de Flutter](#-versión-de-flutter)
- [🚀 Instalación del Proyecto](#-instalación-del-proyecto)
- [📂 Estructura del Proyecto](#-estructura-del-proyecto)
- [🏛️ Arquitectura General](#️-arquitectura-general)
- [🧰 Comandos Útiles](#-comandos-útiles)

---

# 🛠️ Requisitos para Trabajar Localmente

Antes de ejecutar el proyecto, asegúrate de tener instaladas las siguientes herramientas.

## 📌 Versión de Flutter

Este proyecto fue desarrollado con la siguiente versión:

| Herramienta | Versión |
|------------|----------|
| Flutter | **3.44.8 (Stable)** |
| Dart | **3.12.2** |
| DevTools | **2.57.0** |

Puedes verificar tu instalación con:

```bash
flutter --version
```

Salida esperada:

```text
Flutter 3.44.8 • channel stable
Tools • Dart 3.12.2 • DevTools 2.57.0
```

> **Importante:** Se recomienda utilizar **Flutter 3.44.8 (Stable)** para evitar problemas de compatibilidad.

---

## 1. Git

**¿Para qué sirve?**

Permite clonar el repositorio y gestionar el control de versiones mediante GitHub.

Comandos más utilizados:

```bash
git clone <URL_DEL_REPOSITORIO>
git pull
git add .
git commit -m "Mensaje del commit"
git push
```

---

## 2. Flutter SDK

Framework principal utilizado para desarrollar la aplicación.

Debe estar instalado y agregado al **PATH** del sistema.

Comandos más utilizados:

```bash
flutter doctor
flutter pub get
flutter run
flutter clean
flutter build apk
```

---

## 3. Dart SDK

Lenguaje de programación utilizado por Flutter.

No es necesario instalarlo por separado, ya que viene incluido con Flutter.

---

## 4. Entorno de Desarrollo (IDE)

Se recomienda utilizar alguno de los siguientes:

### Visual Studio Code

Extensiones recomendadas:

- Flutter
- Dart

o

### Android Studio

Permite:

- Editar código
- Depurar la aplicación
- Ejecutar emuladores
- Gestionar dispositivos Android

---

## 5. Android Studio y Android SDK

Necesarios para compilar la aplicación Android.

Se recomienda instalar:

- Android SDK
- Android SDK Platform
- Android SDK Build Tools
- Android SDK Command-line Tools
- Android Emulator (opcional)

También puede utilizarse un dispositivo físico con la **Depuración USB** habilitada.

---

## 6. Java Development Kit (JDK)

Android y Gradle requieren Java para compilar el proyecto.

Generalmente Android Studio instala automáticamente una versión compatible del JDK.

---

# 🚀 Instalación del Proyecto

## 1. Clonar el repositorio

```bash
git clone <URL_DEL_REPOSITORIO>
```

---

## 2. Entrar al proyecto

```bash
cd alba_cuidador
```

---

## 3. Instalar las dependencias

```bash
flutter pub get
```

---

## 4. Verificar la instalación

```bash
flutter doctor
```

Todos los elementos deberían aparecer con el símbolo **✓**.

---

## 5. Ejecutar la aplicación

```bash
flutter run
```

---

# 📋 Resumen de Requisitos

| Herramienta | Obligatoria | Propósito |
|-------------|:-----------:|-----------|
| Git | ✅ | Control de versiones |
| Flutter SDK 3.44.8 | ✅ | Framework principal |
| Dart SDK 3.12.2 | ✅ | Lenguaje de programación |
| Visual Studio Code o Android Studio | ✅ | IDE |
| Android SDK | ✅ | Compilar aplicaciones Android |
| Android Emulator o Dispositivo Físico | ✅ | Ejecutar la aplicación |
| JDK | ✅ | Compilar con Gradle |

---

# 📂 Estructura del Proyecto

```text
lib/
│
├── core/
│   ├── constants/
│   ├── errors/
│   ├── network/
│   ├── routes/
│   └── theme/
│
├── data/
│   ├── datasources/
│   ├── models/
│   └── repositories/
│
├── domain/
│   ├── entities/
│   ├── repositories/
│   └── usecases/
│
├── presentation/
│   ├── screens/
│   ├── widgets/
│   └── providers/
│
└── main.dart

assets/
```

---

## 📁 lib/core/

Contiene configuraciones y utilidades compartidas por toda la aplicación.

### 📂 constants/

Almacena constantes globales como:

- Colores
- Textos
- URLs
- Claves
- Valores reutilizables

### 📂 errors/

Centraliza el manejo de errores y excepciones.

Incluye:

- Excepciones personalizadas
- Manejo de errores de Firebase
- Clases de errores

### 📂 network/

Configuraciones relacionadas con:

- Firebase
- APIs
- Clientes HTTP
- Interceptores

### 📂 routes/

Gestiona la navegación mediante **GoRouter**.

Aquí se definen:

- Rutas
- Redirecciones
- Protección de rutas

### 📂 theme/

Configuración visual de la aplicación.

Incluye:

- Temas
- Tipografías
- Colores
- Estilos globales

---

## 📁 lib/data/

Representa la capa de datos.

Aquí se implementan:

- Models
- Data Sources
- Repositories

Esta capa se comunica directamente con Firebase o cualquier servicio externo.

---

## 📁 lib/domain/

Representa la lógica del negocio.

Contiene:

- Entities
- Use Cases
- Interfaces de Repositories

No depende de Flutter ni de Firebase.

---

## 📁 lib/presentation/

Representa la interfaz gráfica de la aplicación.

Aquí se desarrollan:

- Screens
- Widgets reutilizables
- Gestión de estado
- Componentes visuales

Todo lo que el usuario ve e interactúa pertenece a esta capa.

---

## 📁 assets/

Contiene los recursos estáticos del proyecto.

Ejemplos:

- Imágenes
- Iconos
- Logos
- Fuentes
- Archivos JSON
- Animaciones Lottie

Estos recursos deben registrarse en el archivo `pubspec.yaml`.

---

# 🏛️ Arquitectura General

El proyecto sigue una estructura inspirada en **Clean Architecture**, separando las responsabilidades en diferentes capas.

```text
                   Usuario
                      │
                      ▼
             Presentation Layer
                      │
                      ▼
               Domain Layer
                      │
                      ▼
                Data Layer
                      │
                      ▼
        Firebase / API / Base de Datos
```

## Responsabilidad de cada capa

### Presentation

- Interfaz de usuario.
- Widgets.
- Pantallas.
- Navegación.
- Gestión de estado.

---

### Domain

- Lógica de negocio.
- Casos de uso.
- Entidades.
- Contratos de repositorios.

---

### Data

- Obtención y almacenamiento de datos.
- Firebase.
- APIs.
- Repositorios.

---

### Core

- Configuración compartida.
- Temas.
- Constantes.
- Navegación.
- Manejo de errores.

---

### Assets

- Recursos estáticos utilizados por toda la aplicación.

---

# 🧰 Comandos Útiles

```bash
# Obtener dependencias
flutter pub get

# Ejecutar la aplicación
flutter run

# Limpiar archivos temporales
flutter clean

# Actualizar dependencias
flutter pub upgrade

# Analizar el código
flutter analyze

# Formatear el proyecto
dart format .

# Verificar instalación
flutter doctor

# Verificar versión de Flutter
flutter --version
```