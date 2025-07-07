# Cargar paquetes
library(tidyverse)

getwd()
setwd("C:/Users/LuisAndrei/Downloads/Material práctico-20250702")

# Importar datos
titanic <- read_csv("Titanicv2.csv")

summary(titanic)
# Ver los primeros registros
glimpse(titanic)

# Corregir errores de tipeo en Pclass antes de convertir a factor
titanic <- titanic %>%
  mutate(
    Pclass = case_when(
      Pclass == "Lower Clas" ~ "Lower Class",
      TRUE ~ Pclass
    ),
    Pclass = factor(Pclass, levels = c("Upper Class", "Middle Class", "Lower Class"))
  )


# Convertir variables relevantes a factores
titanic <- titanic %>%
  mutate(
    Survived = factor(Survived, levels = c("No", "Yes")),
    Pclass = factor(Pclass, levels = c("Upper Class", "Middle Class", "Lower Class")),
    Sex = factor(Sex),
    Embarked = factor(Embarked)
  )

# Revisión de valores faltantes
colSums(is.na(titanic))


# Supervivencia general
titanic %>%
  count(Survived)

# Promedio y mediana de edad por estado de supervivencia
titanic %>%
  group_by(Survived) %>%
  summarise(
    edad_prom = mean(Age, na.rm = TRUE),
    edad_mediana = median(Age, na.rm = TRUE)
  ) %>%
  ungroup()


# Supervivencia por clase socioeconómica
titanic %>%
  group_by(Pclass, Survived) %>%
  summarise(total = n()) %>%
  ungroup() %>%
  pivot_wider(names_from = Survived, values_from = total, values_fill = 0)


# Histograma de edades por supervivencia
titanic %>%
  ggplot(aes(x = Age, fill = Survived)) +
  geom_histogram(bins = 30, position = "identity", alpha = 0.6) +
  labs(title = "Distribución de edades por supervivencia")

# Diagrama de caja: Edad vs Supervivencia
titanic %>%
  ggplot(aes(x = Survived, y = Age, fill = Survived)) +
  geom_boxplot() +
  labs(title = "Edad por estado de supervivencia")

# Supervivencia por clase
titanic %>%
  ggplot(aes(x = Pclass, fill = Survived)) +
  geom_bar(position = "fill") +
  labs(title = "Proporción de supervivencia por clase socioeconómica", y = "Proporción")

# Sexo y supervivencia
titanic %>%
  ggplot(aes(x = Sex, fill = Survived)) +
  geom_bar(position = "fill") +
  labs(title = "Supervivencia por sexo", y = "Proporción")
