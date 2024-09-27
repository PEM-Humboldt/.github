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
```
## 3. Definir Directorio de Trabajo y Rutas a Directorios Importantes
Configura el directorio de trabajo y las rutas a las carpetas relevantes. Puedes usar la función setwd() o la función here() del paquete here para manejar rutas relativas.

#### Opciones:
- setwd(): Define el directorio de trabajo de forma absoluta.
- here(): Define rutas relativas basadas en el proyecto.[here function - RDocumentation](https://www.rdocumentation.org/packages/here/versions/1.0.1/topics/here)

  
#### Ejemplos de rutas a directorios importantes:
```r
# Definir rutas usando here()
dir_datos <- here::here("Datos")
dir_resultados <- here::here("Resultados")

# Definir rutas usando rutas absolutas
setwd("Ruta/Al/Proyecto")
dir_datos <- "Ruta/Al/Proyecto/Datos"
dir_resultados <- "Ruta/Al/Proyecto/Resultados"

# Dentro de la definición de la plantilla propuesta puede usar

setwd(file.path(this.path::this.path(),"..",".."))

dir_Datos_Or<- file.path("Datos", "Originales")
dir_Resultados<- file.path ("Resultados")

```

## 4. Cargar Archivos de Datos y Funciones Necesarias
Carga todos los archivos de datos y las funciones que vas a utilizar en el análisis.

```r
# Cargar datos
datos <- read.csv(file.path(dir_datos, "datos.csv"))

# Cargar funciones personalizadas
source(file.path("Funciones", "mis_funciones.R"))
```
## 5. Definir parámetros globales
Definir parámetros globales esenciales para configurar el proyecto, pero que puedan modificarse fácilmente para adaptarlos a otros proyectos. Esto facilita la reutilización del código sin necesidad de buscar y cambiar manualmente cada parámetro. 
Ejemplos de estos parámetros incluyen: proyecciones, nombres de columnas, umbrales de análisis, y colores de visualización, entre otros.

## 6. Preparar los Datos
Prepara los datos para el análisis, por ejemplo:

- Proyecciones comunes
- Definir áreas de estudio
- Limpiar los datos de errores o depurarlos para tener sólo la información necesaria.

```r
# Limpiar datos
datos_limpios <- datos %>%
  filter(!is.na(variable_de_interes)) %>%
  mutate(nueva_variable = otra_variable * 100)
```

## 7. Análisis y Resultados
En esta sección intente no repetir códigos. Si hay tareas repetidas, cree funciones. Guarde estas funciones en un código aparte y luego cárgalas al código principal con la función source(), o ubícalas al inicio del código donde se usen, por ejemplo, en la sección 4.

Es importante identificar las diferentes partes del análisis, siguiendo una secuencia lógica y modular. Dichos módulos pueden ser diferenciados en secciones dentro del documento (Revise sección (Buenas prácticas de código)[./BuenasPracticasCodigo.md]) o escribiendo funciones con un cometido específico e independientes del código principal del análisis.

```r
# Funciones ####
# Función para calcular la media y desviación estándar
calcula_estadisticas <- function(df, columna) {
  resultado <- df %>%
    summarize(
      media = mean(!!sym(columna), na.rm = TRUE),
      desviacion = sd(!!sym(columna), na.rm = TRUE)
    )
  return(resultado)
}

# Cargar datos ####
datos <- read.csv("Datos/datos.csv")

# Análisis ####

# Aplicar la función para calcular estadísticas en diferentes columnas
estadisticas_altura <- calcula_estadisticas(datos, "altura")
estadisticas_peso <- calcula_estadisticas(datos, "peso")

```

# Utiliza un Sistema de Control de Versiones
En lugar de guardar diferentes versiones de código como analisis_v1, analisis_v2, etc., es altamente recomendable emplear herramientas como Git. Estas herramientas permiten:

- Mantener un historial organizado y detallado de todos los cambios realizados en tu código y datos.
- Registrar quién hizo cada cambio, cuándo y por qué.
- Facilitar la comparación y restauración de versiones anteriores.

Cuando se combina con plataformas como GitHub, GitLab o Bitbucket, se simplifica enormemente el desarrollo colaborativo de proyectos.

Puede descargar el modelo de organización de carpetas [aquí](./Estilo), junto con una plantilla de código con la estructura descrita [aquí](./Estilo/Codigos/Plantilla_Código.R).

# Bibliografía y Enlaces de Soporte
- [Buenas prácticas en R - Yizinet](https://www.yizinet.com)

- [Quince consejos para mejorar nuestro código y flujo de trabajo con R](https://frodriguezsanchez.net)

- [Mejores Prácticas de Programación en R para Estudiantes y Profesionales](https://gyata.ai)

- [Trabajar con proyectos en RStudio](https://eliocamp.github.io)

- [Unidad 8 Buenas prácticas en R y Rstudio | bookdown-LimnoR](https://limno-con-r.github.io)



