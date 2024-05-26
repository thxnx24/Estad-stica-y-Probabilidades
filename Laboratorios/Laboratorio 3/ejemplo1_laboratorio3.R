# LABORATORIO 3: MEDIDAS DE POSICIÓN Y FORMA 

# En el siguiente conjunto de números, se proporcionan los pesos (redondeados a la libra más próxima) 
# de los bebes nacidos durante un cierto intervalo de tiempo en un hospital: 
# 4, 8, 4, 6, 8, 6, 7, 7, 7, 8, 10, 9, 7, 6, 10, 8, 5, 9, 6, 3, 7, 6, 4, 7, 6, 9, 7, 
# 4, 7, 6, 8, 8, 9, 11, 8, 7, 10, 8, 5, 7, 7, 6, 5, 10, 8, 9, 7, 5, 6, 5.
# a. Encontrar el percentil 34, el decil 7, y cuartil 3 y sus interpretaciones.
# b. ¿Es esta una distribución sesgada? ¿De ser así en qué dirección?
# c. ¿Qué tipo de deformación vertical presenta?
# d. Hacer el diagrama de cajas e interpretar los resultados.
  
# Introducir la data
# Medidas de forma
x<-c(4,8,4,6,8,6,7,7,7,8,10,9,7,6,10,8,5,9,6,3,7,6,4,7,6,9,7,4,7,6,8,8,9,11,8,7,10,8,5,7,7,6,5,10,8,9,7,5,6,5)

# Hallamos las medidas de Posición
quantile(x,prob = c(0.34,0.07,0.75))

# Hallamos las medidas de forma
library(psych)

#Asimetria
skew(x, na.rm = TRUE,type=3)

#Kurtosis
kurtosi(x, na.rm = TRUE,type=3)

#  Hallamos un resumen estadístico
library(psych)
describe(x)

# Verificamos con un histograma, la deformación vertical y horizontal de la data

hist(x) 

# Hallamos el gráfico de diagrama de caja de la data

boxplot(x, horizontal = TRUE, col = "green",main="Pesos de bebes recién nacidos"
        ,border = "black")












