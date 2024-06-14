# Una central telefonica, en promedio, se reciben 5 llamadas por minuto
# La empresa nesecita calcular la probabilidad de:

# 1) Recibir exactamente 7 llamadas en un minuto
# 2) No recibir ninguna llamada en un minuto
# 3) Recibir menos de 2 y no más de 3 llamadas en 2 minutos

# Añadimos la libreria correspondiente
library(dplyr)

# 1) 
# Definimos X:Número de llamadas en un minuto
# Definimos el parámetro lambda para 1 minuto 
lambda <- 5

# Calculamos la probabilidad de que X sea 7
prob_7 <- dpois(7, lambda)

# Mostramos el resultado
cat("La probabilidad de recibir exactamente 7 llamadas en un minuto es:", prob_7, "\n")

# 2) 
# Definimos X:Número de llamadas en un minuto
# Definimos el parámetro lambda para 1 minuto
lambda <- 5

# Calculamos la probabilidad de que X sea 0
prob_0 <- dpois(0, lambda)

# Mostramos el resultado
cat("La probabilidad de que en un minuto no ocurra llamada alguna es:", prob_0, "\n")

# 3) 
# Definimos X:Número de llamadas en 2 minuto
# Definimos el parámetro lambda para 2 minutos
lambda <- 10

# Calculamos la probabilidad de que X sea 2 y 3
prob_2 <- dpois(2, lambda)
prob_3 <- dpois(3, lambda)

# Sumamos las probabilidades
total_prob <- prob_2 + prob_3

# Mostramos el resultado
cat("La probabilidad de que en 2 minutos se realicen no menos de 2 y no más de 3 llamadas es:", total_prob, "\n")

