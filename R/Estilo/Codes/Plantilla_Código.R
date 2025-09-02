# Título: Soy una plantilla
#
# Autor(es): Nombres Apellidos
#
# Descripción: Esté código da una plantilla de código para trabajar
#
# Fuentes: 
#* IGAC_Depto.gpkg: Instituto geográfico Agustín Codazzi
#* pop00c.tif: SEDAC
#

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
library(terra)


#**********************************************************
# Definir directorio(s) de trabajo -----------------------
#**********************************************************

setwd(file.path(this.path::this.path(),"..",".."))

dir_vector<- file.path("Data","Raw", "vector")
dir_raster<- file.path("Data", "Raw", "raster")
dir_Resultados<- file.path ("Results")


#**********************************************************
# Cargar los datos necesarios ----------------------------
#**********************************************************

# Capas Vector
v_adm<-st_read(file.path(dir_vector, "IGAC_Depto.gpkg"))

# Capas Raster
r_pop<-rast(file.path(dir_raster, "pop00c.tif")) 


#**********************************************************
# Parametros globales ----------------------------
#**********************************************************

scr <- "EPSG:4326"
r_base <- rast(ncols=1895, nrows= 16032, xmin=-80.16466, xmax=-65.77263, ymin=-4.181089, ymax=12.422 , crs=scr )

# umbral de población
umbral <- 5


#**********************************************************
# Preparar datos ----------------------------
#**********************************************************

##  completar datos Adm ####

v_adm$area <- st_area(v_adm)

plot(v_adm$geom)

## Reproyectar pop ####

r_pop<- project(r_pop, r_base)
plot(r_pop)


#**********************************************************
# Análisis ----------------------------
#**********************************************************


## Mascara de la región de estudio ####

r_pop_maskCol<- crop(r_pop, v_adm, mask=T)
plot(r_pop_maskCol)

## Mascara de población mayor a 200 ####

r_pop_cond<- r_pop_maskCol > umbral
plot(r_pop_cond)


# escribir resultados

writeRaster(r_pop_cond, file.path(dir_Resultados,"GIS_Layers", "Mascara_Póblación.tif"))


