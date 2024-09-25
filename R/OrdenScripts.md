# Orden del Código

Para organizar las secciones en tu código se sugiere seguir la siguiente estructura:

## 1. Descripción
Incluye una breve descripción del código, créditos, fuentes y anotaciones importantes.

## 2. Librerías
Carga todos los paquetes que serán necesarios para ejecutar el código. Puedes agruparlos opcionalmente en comentarios para especificar a qué funciones o análisis están asociados.

```r
# Librerías necesarias para análisis de datos
library(dplyr)
library(ggplot2)

# Librerías para manejo de datos espaciales
library(sf)
library(terra)

3. Definir Directorio de Trabajo y Rutas a Directorios Importantes
Configura el directorio de trabajo y las rutas a las carpetas relevantes. Puedes usar la función setwd() o la función here() del paquete here para manejar rutas relativas.

Opciones:
setwd(): Define el directorio de trabajo de forma absoluta.
here(): Define rutas relativas basadas en el proyecto.
Ejemplos de rutas a directorios importantes:
