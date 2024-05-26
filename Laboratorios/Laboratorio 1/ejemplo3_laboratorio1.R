# LABORATORIO 1 : ORGANIZACIÓN DE DATOS: VARIABLE CUALITATIVA Y CUANTITATIVA 

# Las calificaciones de 0 a 10 de 50 alumnos de estadística, son los siguientes
# 5, 2, 4, 9, 7, 4, 5, 6, 5, 7, 7, 5, 5, 2, 10, 5, 6, 5, 4, 5, 8, 8, 4, 0, 8, 4, 8, 6, 6, 3,
# 6, 7, 6, 6, 7, 6, 7, 3, 5, 6, 9, 6, 1, 4, 6, 3, 5, 5, 6, 7
# a. Hallar la tabla de distribución de frecuencias por intervalos
# b. Graficar el Histograma
# c. ¿Cuántos alumnos tienen calificaciones menores de 6?

# Introducir la data
x <- c(5,2,4,9,7,4,5,6,5,7,7,5,5,2,10,5,6,5,4,5,8,8,4,0,8,4,8,6,6,3,6,7,6,6,7,6,7,3,5,6,9,6,1,4,6,3,5,5,6,7)

#  Hallamos el histograma: 
#Grafico: histograma
hist(x,
     freq = TRUE,
     include.lowest = TRUE, right = FALSE,
     density = NULL, col = "pink", border = "blue",
     main = paste("Calificaciones de 50 alumnos"),
     xlab = "Puntos", ylab="Alumnos",
     axes = TRUE, plot = TRUE, labels = FALSE,nclass = NULL, warn.unused = TRUE)

# Hallamos la tabla de frecuencia e insertamos la librería fdth
#Tabla de frecuencias
library(fdth)
y=fdt(x, start=0, end=10, h=2)
y

