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
```
## 2. Uso de comentarios:
Utiliza los comentarios para guiar al lector, distinguir subsecciones o explicar por qué se hacen las cosas de una determinada manera.

En RStudio puedes crear una sección con `Ctrl + Shift + R`, o agregar 4 guiones (`-` o `#`) después de un comentario.

```r
# algún comentario ----
# algún comentario ####
```
También puede crear subsecciones en R añadiendo `#` delante de una sección.
```r
## algún comentario ----
### algún comentario ----
```

En Rstudio esto permite la creación de un índice de secciones, facilitando la navegación dentro del código. 
En la gráfica inferior vea como las secciones definidas con numerales se traducen en un índice. El índice se puede abrir pulsando `Ctrl + Shift + O`.


## 3. Uso de funciones:
Es fundamental comprender la importancia de crear y utilizar funciones correctamente en el código. Repetir código copiando y pegando es una mala práctica. En lugar de escribir código repetitivo, crea funciones.

Las funciones vectorizadas (como `apply`, `lapply`, `sapply`, etc.) son más eficientes que los bucles convencionales.

***NOTA:*** *Al definir las funciones no permitir el uso de parametros globales. Defina todos los parameros que va a necesitar la función, para hacer la función más flexible y menos compleja para los usuarios.*

**Ejemplos:**
```r
# Buena práctica
datatable(data = Col_resumen1,
  options = list(
    pageLength = 33,
    paging = F,
    language = list(search = "Buscar:")
  )
)

# Mala práctica
datatable(Col_resumen1,
  options = list(33, F,  language = list(search = "Buscar:"))
)

```

Uso de Bucles:
Cuando uses bucles, evita variables incrementales y preasigna vectores, listas y objetos de datos.

Ejemplos:
r
Copiar código
# Buena práctica
x <- integer(n)
for (i in 1:n) {
    x[i] <- i^2
}

# Mala Práctica
x <- c() 
for (i in 1:n) {
    x <- c(x, i^2)
}
Evitar objetos innecesarios:
Evita crear objetos innecesarios y previene el uso de objetos redundantes.

r
Copiar código
z <- 5:9

a <- data.frame(x = 4, y = 1:5)

b <- cbind(a, z)
Haga pilotos de su proceso antes de usar los datos completos.
Busque la simplicidad y efectividad:
Cuanto más sencillo sea el código, menores serán las probabilidades de cometer errores.

Optimice luego:
Primero enfócate en encontrar la solución y luego en optimizarla. Usa herramientas como Rprof(), system.time(), y gc() para medir y optimizar el rendimiento del código.

Errores comunes:
Olvidar cerrar un paréntesis o una llave.
Usar una variable antes de que haya sido definida.
Confundir mayúsculas y minúsculas.
Evita usar los mismos nombres para variables y funciones.
Tips para ser felices:
Alt + - para la asignación <-.
Ctrl + Shift + M para %>%.
Usa TRUE y FALSE, no T y F.
Evita guardar espacios de trabajo completos, mejor guarda objetos con save() o saveRDS().
Bibliografía y enlaces de soporte:
Buenas prácticas en R - Yizinet
Quince consejos para mejorar nuestro código y flujo de trabajo con R
Mejores Prácticas de Programación en R para Estudiantes y Profesionales
Unidad 8 Buenas prácticas en R y Rstudio | bookdown-LimnoR
r
Copiar código

Este formato mantiene todo en estilo Markdown mientras conserva el código y los ejemplos.





