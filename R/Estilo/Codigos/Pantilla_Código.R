# Título: Soy una plantilla
#
# Descripción: Esté código da una plantilla de código pata trabajar
#
# Autor(es): Nombres Apellidos
# 
# Por hacer o  corregir: 

## - MOstrar las secciones : hecho
## - Errores de código : hecho
## - corregir estilo : xxxxxxx
## - función Hola no funciona : xxxxxxxxxxx
## - ...
## - ...


#**********************************************************
# librerías o dependencias --------------------------------
#**********************************************************

# lectura de datos 

library (sf) 
library(foreign) 
library(terra)

# Procesamiento de datos

library(spatstat)


#**********************************************************
# Definir directorio(s) de trabajo -----------------------
#**********************************************************

# Alternativa 1: Si se encuentra dentro de un projecto de RStudio

dir_vector<- here::here("Datos","Vector")
dir_raster<- here::here("Datos","Raster")

dir_ouput<-  here::here("Resultados")


# Alternativa 2: Si no tiene projecto de RStudio defina

setwd( "C:/Users/alejandra.narvaez/Documents/3_CódgosR/Estilo" ) # "ruta a la carpeta del proyecto"

dir_vector<- paste0("Datos/Vector")
dir_raster<- paste0("Datos/Raster")


#**********************************************************
# Cargar los datos necesarios ----------------------------
#**********************************************************

# Capas Vector
v_adm<-st_read(paste0(dir_vector, "/IGAC_Depto.gpkg"))

# Capas Raster
r_pop<-rast(paste0(dir_raster, "/pop00c.tif")) 


#**********************************************************
# Preparar datos ----------------------------
#**********************************************************

##  completar datos Adm ####

v_adm$area <- st_area(v_adm)


## Reproyectar pop ####

r_pop<- project(r_pop, v_adm)


#**********************************************************
# Análisis ----------------------------
#**********************************************************


## Mascara de población mayor a 200 ####

r_pop_mask<- r_pop > 200


## Mascara de la región de estudio ####

r_pop_maskCol<- mask(r_pop_mask, v_adm)

plot(r_pop_mask)



results <- otra_funcion(input_file, sample_number)

# escribir resultados

write.table(results, paste0(dir_output, "IGAC_Depto.txt"))


