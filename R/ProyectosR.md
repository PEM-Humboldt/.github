# Proyectos con R

Trabajar en proyectos es altamente recomendable para cada actividad que se realice. La estructura estándar de un proyecto debe alojar idealmente todos los archivos relacionados con un proyecto o informe técnico (datos, código, figuras, etc.) en la misma carpeta. Utiliza el paquete `here()` o `setwd()` para especificar las rutas a los diferentes archivos dentro del proyecto (Detalles en Orden de código).

### Esta estructura asegura:

- **Orden**: Mantiene todos los archivos del proyecto bien organizados.
- **Reproducibilidad**: Facilita la repetición de análisis por otros investigadores.
- **Transferibilidad**: Permite que otros puedan entender y utilizar tu proyecto sin dificultad.
- **Construcción de repositorios**: Es indispensable para la creación de repositorios compartidos.
- **Facilidad de uso en RStudio**: Permite crear proyectos en RStudio que facilitan el trabajo continuo y organizado.

## Proyectos en RStudio

Los proyectos en RStudio se crean a partir de una carpeta organizada o donde se va a organizar el proyecto. Al acceder al proyecto, se puede continuar exactamente desde donde se dejó. Además, si se trabaja en varios proyectos a la vez, el uso de proyectos en RStudio permite alternar entre ellos sin confusiones.

**Cómo crear un proyecto en RStudio**: [Capítulo 14 Proyecto de trabajo | Introducción a R: aprendiendo R sin morir en el intento](https://aprendiendo-r-intro.netlify.app)

## Estructura de las carpetas

Se sugiere una estructura sencilla para la organización de las carpetas en los proyectos. Dentro de la carpeta raíz del proyecto se organizan los siguientes elementos:

- **Fichero README**: Con información general del proyecto: objetivos, elementos y estructura del proyecto, desarrolladores, licencia de uso, cómo citarlo, etc. Archivo de texto o formato Markdown.
- **Fichero de licencia**: Especificando la licencia de uso de los datos y/o código.
- **Carpeta de códigos**: Códigos para la ejecución de los procesos. A menos que sea un análisis corto que pueda hacerse en unas pocas líneas de código, conviene crear módulos de código, es decir, códigos separados. Para proyectos más complejos, usar un código maestro o `makefile` que ejecute los distintos pasos del análisis en el orden correcto, definiendo el flujo de trabajo.
- **Carpeta de datos de entrada**: Con los datos brutos, organizados en temas o tipos de formatos de datos según sea el caso. Los datos originales nunca se deben modificar.
- **Carpeta de resultados**: Que se puede dividir en subcarpetas dependiendo de la complejidad de los productos.

### Esquema para la organización de las carpetas del proyecto:

      README 
      LICENSE 
      │ 
      ├── Códigos 
      │     ├── Funciones 
      │     ├── Análisis y resultados 
      │     ├── Preprocesamiento 
      │     └── Código maestro 
      │ 
      ├── Datos 
      │     ├── Tema o Tipo 1 
      │     └── Tema o Tipo 2 
      │
      └── Resultados 
            ├── Capas 
            ├── Tablas 
            └── Figuras

   
Puedes descargar el modelo de organización de carpetas, junto con una plantilla de código [aquí](#).

## Bibliografía y enlaces de soporte

- [Trabajar con proyectos en RStudio](https://eliocamp.github.io)
- [Unidad 8 Buenas prácticas en R y Rstudio | bookdown-LimnoR](https://limno-con-r.github.io)


