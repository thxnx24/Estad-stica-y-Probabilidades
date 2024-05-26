# LABORATORIO 2 : MEDIDAS DE TENDENCIA CENTRAL Y DISPERSIÓN 

# Dada las edades de 60 personas: 40,60,50,45,65,70,95,90,45,60,43,56, 65, 80, 45, 70, 45, 75, 45, 54,
# 35, 46, 47, 50, 50, 60, 50, 50, 65, 50, 50, 22, 54, 68, 70, 46, 54, 55, 50, 55, 40, 68, 76, 56, 55, 45, 50,
# 43, 46, 47, 70, 24, 34, 54,43, 34, 45, 45, 45, 45.
# a. Calcular las medidas de tendencia central e interprete.
# b. Calcular las medidas de dispersión.
# c. La siguiente dirección calcula medidas estadísticas: https://www.calcuvio.com/calculadora-estadistica
# Compara si los resultados son iguales o diferentes, emite una opinión de la razón en un máximo de dos líneas.

# Introducir la data:
datos <- c(40,60,50,45,65,70,95,90,45,60,43,56, 65, 80, 45, 70, 45, 75, 45, 54,
           35, 46, 47, 50, 50, 60, 50, 50, 65, 50, 50, 22, 54, 68, 70, 46, 54, 55, 50, 55,
           40, 68, 76, 56, 55, 45, 50, 43, 46, 47, 70, 24, 34, 54,43, 34, 45, 45, 45, 45)
datos

# Hallamos las medidas de tendencia central
media <- round(mean(datos),2)
paste("Usando mean(), para determinar la media de los datos =", media)

mediana <- median(datos)
print(mediana)

library(modeest)
moda <- mfv(datos)
moda

# Cargar la librería ggplot
library(ggplot2)

# El siguiente código permite crear un conjunto de datos “data.frame” a partir del vector de datos.
df.datos <- data.frame(datos)
df.datos
ggplot(data = df.datos, mapping = aes(x = datos)) +
  geom_histogram(bins = 30) +
  ggtitle('Histograma de datos') +
  xlab('Valores') + ylab('Frecuencia') 
titulo <- "Histograma de los datos"
subtitulo <- paste("Media=",media, " Mediana = ",mediana, " Moda=",moda)
ggplot(data = df.datos, mapping = aes(x=datos)) +
  geom_histogram(bins=30) +
  ggtitle(titulo, subtitle = subtitulo) +
  xlab('Valores') + ylab('Frecuencia') +
  geom_vline(aes(xintercept = media,
                 color = "media"),
             linetype = "dashed",
             size = 1) +
  geom_vline(aes(xintercept = mediana,
                 color = "mediana"),
             linetype = "dashed",
             size = 1) +
  geom_vline(aes(xintercept = moda,
                 color = "moda"),
             linetype = "dashed",
             size = 1)

# Hallamos las medidas de dispersión
max(datos)

min(datos)

Rang <- max(datos) - min(datos)
Rang

var(datos)

sd(datos)

# Hallamos un resumen estadístico con el código (SUMMARY)
summary(datos)

