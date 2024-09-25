# Buenas prácticas de código
Los códigos no deben ser sólo funcionales, sino limpios, eficientes y fáciles de entender. Para esto aquí una lista de las mejores prácticas: 

1. Estilo de codificación consistente
2. Uso de comentarios
3. Uso de funciones
4. Uso de Bucles
5. Evitar objetos innecesarios
6. Haga pilotos
7. Busque la simplicidad y efectividad
8. Optimice luego

## 1. Estilo de Codificación Consistente:

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

## 2. Uso de comentarios:
Utiliza los comentarios para guiar al lector, distinguir subsecciones o explicar por qué se hacen las cosas de una determinada manera.

En RStudio puedes crear una sección con Ctrl + Shift + R, o agregar 4 guiones (- o #) después de un comentario.
