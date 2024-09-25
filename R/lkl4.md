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


# Recursos varios para investigadores e interesados en contribuir

En este repositorio se alojan recursos de varios tipos, orientados a ayudar el trabajo en equipo, el uso de git y la organización del código.

- [Recursos de git](./git/README.md)
- [Plantillas](./plantillas/README.md)
- [Estructura de un proyecto en R](https://docs.google.com/document/d/1qAS2LK7ZWvJAzlAbenrg6gLGYC4mZQWP/edit?usp=drive_link&ouid=107189866705992298129&rtpof=true&sd=true)
- [Orden de los Scripts en R](https://docs.google.com/document/d/13qPv-mAB1Fj2sThY79gzveFHUvFAoaTk/edit?usp=sharing&ouid=107189866705992298129&rtpof=true&sd=true)
- [Buenas Practicas de código con R](https://docs.google.com/document/d/1ynG4EIpGFWGFT1vdRAPPXio_Vuqf-vYs/edit?usp=sharing&ouid=107189866705992298129&rtpof=true&sd=true)
- [Plantilla de proyecto R](https://drive-data-export.usercontent.google.com/download/2nvvv3hit7af6408ls2n8o22lhk7avvg/bd48lriiunfi386ujqnb2ch6mcljf7ni/1724949000000/1bdd0bf3-e0a5-406e-afa8-425b5239b23a/107189866705992298129/ADt3v-OUQ-FgEfAaOpUspmKr8xuq_APJxowIAMSw0DiKTmqskijNXGHqxN5NrwThXIYC7Kh90S_kvLhYE9oP2pM8EQCNWVEULGFvu7xc2YAEd6XEqdandE5Q28LGya5lP77NT0PD7zgwwasVVgRHr12VGBBET4pDqV5G1wBdk1aF0iKKGZPnKHN86r0hsqHHx_sLCu5zKiXUAujVf1EJN3dL8favvXMOEgDXzyjkXpgVXjHPZDHkHOBlU4lssJSqBuI6x6qepnINckeqNQRE7CcNrrgdSmDUUs2PFZxSG0hBy-34FzvhOuH3pXCnFex57ckprucEpqoh?j=1bdd0bf3-e0a5-406e-afa8-425b5239b23a&user=511444732560&i=0&authuser=0): Aquí puede descargar una carpeta con subcarpetas nombradas y estructuradas de acuerdo a la "Estructura de un proyecto en R". Esta la puede usar para empezar sus proyecto. 

Progresivamente se irán introduciendo nuevos materiales. Mientras tanto, diviértete:

![](https://imgs.xkcd.com/comics/git.png)

<sub>https://imgs.xkcd.com/comics/git.png</sub>
