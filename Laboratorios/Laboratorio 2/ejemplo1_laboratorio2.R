# LABORATORIO 2 : MEDIDAS DE TENDENCIA CENTRAL Y DISPERSIÓN 

# En el siguiente conjunto de números, se proporcionan los pesos (redondeados a la libra más próxima) 
# de los bebes nacidos durante un cierto intervalo de tiempo en un hospital: 
# 4, 8, 4, 6, 8, 6, 7, 7, 7, 8, 10, 9, 7, 6, 10, 8, 5, 9, 6, 3, 7, 6, 4, 7, 6, 9, 7, 4, 7, 6, 8, 8, 9, 
# 11, 8, 7, 10, 8, 5, 7, 7, 6, 5, 10, 8, 9, 7, 5, 6, 5.
# a. Calcular las medidas de tendencia central e interprete.
# b. Calcular las medidas de dispersión.
# c. La siguiente dirección calcula medidas estadísticas: https://www.calcuvio.com/calculadora-estadistica
# Compara si los resultados son iguales o diferentes, emite una opinión de la razón en un máximo de dos líneas.


# Introducir la data
#Estadisticas resumen: Medidas estadisticas
x<-c(4,8,4,6,8,6,7,7,7,8,10,9,7,6,10,8,5,9,6,3,7,6,4,7,6,9,7,4,7,6,8,8,9,11,8,7,
     10,8,5,7,7,6,5,10,8,9,7,5,6,5)
str(x)

# Hallamos las medidas de tendencia central
media_aritmetica<-mean(x)
media_aritmetica

mediana<-median(x)
mediana

library(modeest)
moda <- mfv(x)
moda

# Hallamos las medidas de dispersión

minimo_maximo<-c(min(x), max(x))
minimo_maximo

Rango<-max(x)-min(x)
Rango

Q3<-quantile(x,3/4)
Q3

Q1<-quantile(x,1/4)
Q1

Rango_intercuartil<-Q3-Q1
Rango_intercuartil

Rang_intercuartil<-IQR(x)
Rang_intercuartil

varianza<-var(x)
varianza

desviacion_estandar<-sd(x)
desviacion_estandar

