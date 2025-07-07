# Análisis Exploratorio del Titanic con R y Tidyverse

## Descripción

Este proyecto consiste en un análisis exploratorio del conjunto de datos `Titanicv2.csv` para comprender qué características (edad, clase socioeconómica, sexo, puerto de embarque, entre otras) influyeron en la supervivencia de los pasajeros del Titanic. Se utiliza el lenguaje R junto con el paquete `tidyverse` para manipulación y visualización de datos.

## Contenido

- `analisis_titanic.R`: Script en R que importa los datos, realiza la limpieza, manipulación, análisis estadístico y genera visualizaciones para descubrir patrones en los datos.
- `resumen_titanic.pdf`: Documento con un resumen ejecutivo de los hallazgos más relevantes del análisis.
- `Titanicv2.csv`: Dataset original con la información de los pasajeros.

## Metodología

- Importación y limpieza de datos con `readr` y `dplyr`.
- Corrección de inconsistencias en variables categóricas (`Pclass`, `Sex`, `Embarked`).
- Análisis estadístico descriptivo usando funciones como `group_by()`, `summarise()`, y `pivot_wider()`.
- Visualizaciones con `ggplot2` para explorar distribución de edad, proporción de supervivencia por clase, sexo y puerto de embarque.
- Uso de buenas prácticas como desagrupación (`ungroup()`) para evitar efectos no deseados en la manipulación de datos.

## Resultados Clave

- La clase socioeconómica y el sexo son factores relevantes en la probabilidad de supervivencia.
- La edad promedio no mostró diferencias significativas entre sobrevivientes y no sobrevivientes.
- La mayoría de los pasajeros embarcaron en Southampton, con diferentes tasas de supervivencia.

## Uso

1. Clonar este repositorio.
2. Colocar el archivo `Titanicv2.csv` en el mismo directorio.
3. Ejecutar el script `analisis_titanic.R` en R o RStudio.
4. Revisar las visualizaciones y el resumen PDF para entender los hallazgos.

## Autor

Luis Andrei Rodríguez Trejo  
Universidad de Colima

## Licencia

Este proyecto es para fines académicos y no tiene licencia específica.
