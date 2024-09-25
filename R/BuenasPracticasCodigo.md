## Buenas prácticas de código
Los códigos no deben ser sólo funcionales, sino limpios, eficientes y fáciles de entender. Para esto aquí una lista de las mejores prácticas: 

1 Estilo de codificación consistente
2 Uso de comentarios
3 Uso de funciones
4 Uso de Bucles
5 Evitar objetos innecesarios
6 Haga pilotos
7 Busque la simplicidad y efectividad
8 Optimice luego

### Estilo de Codificación Consistente:

- **Indentación**: La correcta indentación es fundamental para mejorar la legibilidad y organización del código. Permite mostrar claramente la estructura y jerarquía de las distintas partes, como bucles, condicionales y funciones.
- **Manejo de Espacios**: Es importante utilizar los espacios adecuadamente, como entre signos y números, y entre comas y números. Esto facilita la legibilidad y ayuda a evitar errores.

En RStudio puedes pulsar `Ctrl + Shift + A` para auto formatear el código y agregar espacios donde sea necesario. Paquetes como `styler` también tienen funciones para dar formato directamente a un archivo o incluso a directorios completos. Además, el paquete `lindr` y su función `lint()` proporcionan una lista de desviaciones de la guía de estilo.

- **Nomenclatura**: Adopta una convención de nomenclatura común para todo el código. Por ejemplo, usa prefijos para identificar tipos de objetos: rasters (`r_`), tablas (`t_`), capas vectoriales (`v_`). Aplica nombres cortos pero descriptivos con estilo "snake_case" para objetos y "camelCase" para funciones.

#### Ejemplos:

```r
# Buena práctica
vector_123 <- c(1,2,3)

funcionExponencial <- function (exponent) {
  return (2 ** exponent)
}

# Mala Práctica
myvector <- c(1,2,3)

funcionexponencial_base2 <- function (exponent) {
  return (2 ** exponent)
}

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
```

## 4. Cargar Archivos de Datos y Funciones Necesarias
Carga todos los archivos de datos y las funciones que vas a utilizar en el análisis.

```r
# Cargar datos
datos <- read.csv(file.path(dir_datos, "datos.csv"))

# Cargar funciones personalizadas
source(file.path("Funciones", "mis_funciones.R"))
```
## 5. Preparar los Datos
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

## 6. Análisis y Resultados
En esta sección intenta no repetir códigos. Si hay tareas repetidas, crea funciones. Guarda estas funciones en un código aparte y luego cárgalas al código principal con la función source(), o ubícalas al inicio del código donde se usen, por ejemplo, en la sección 4.

Es importante identificar las diferentes partes del análisis, siguiendo una secuencia lógica y modular. Dichos módulos pueden ser diferenciados en secciones dentro del documento o escribiendo funciones con un cometido específico e independientes del código principal del análisis.

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

Puede descargar el modelo de organización de carpetas, junto con una plantilla de código con la estructura descrita [aquí] ()

# Bibliografía y Enlaces de Soporte
- [Buenas prácticas en R - Yizinet](https://www.yizinet.com)

- [Quince consejos para mejorar nuestro código y flujo de trabajo con R](https://frodriguezsanchez.net)

- [Mejores Prácticas de Programación en R para Estudiantes y Profesionales](https://gyata.ai)

- [Trabajar con proyectos en RStudio](https://eliocamp.github.io)

- [Unidad 8 Buenas prácticas en R y Rstudio | bookdown-LimnoR](https://limno-con-r.github.io)



