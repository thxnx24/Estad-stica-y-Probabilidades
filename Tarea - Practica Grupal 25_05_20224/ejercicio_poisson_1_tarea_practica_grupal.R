#Tarea Grupal - EJERCICIO DE POISSON

# Un vendedor de seguros de vida vende un promedio de 4 polizas
# por semana, Calcular la probabilidad de:

# 1) Que venda algunas pólizas en una semana
# 2) Que venda 2 o más pólizas, pero menos de 5 (en una semana)
# 3) Suponiendo que hay 5 días de trabajo por semana, ¿cuál es la probabilidad de que en un día dado venda una póliza?
# 4) Calcule la media, la varianza y la desviación estándar de la distribución de probabilidad que se infiere de este problema

library(dplyr)

# Parámetro de la distribución de Poisson
lambda <- 4

#  Que venda algunas pólizas en una semana
p_al_menos_una <- 1 - dpois(0, 4)
p <- round(p_al_menos_una,4)
cat("Probabilidad de que venda algunas pólizas en una semana ", p_al_menos_una, "\n")
cat("Probabilidad de que venda algunas pólizas en una semana (4 decimales):", p, "\n")

# Probabilidad de vender 2, 3, o 4 pólizas en una semana
p_2 <- dpois(2,lambda)
p_3 <- dpois(3,lambda)
p_4 <- dpois(4,lambda)
p_2_5 <- p_2 + p_3 + p_4
p <- round(p_2_5,4)

cat("Probabilidad de vender entre 2 y 4 pólizas en una semana:", p_2_5,"\n")
cat("Probabilidad de vender entre 2 y 4 pólizas en una semana (4 decimales):", p,"\n")

# Suponiendo que hay 5 días de trabajo por semana, ¿cuál es la probabilidad de que en un día dado venda una póliza?
lambda_dia <- lambda / 5
p_una_poliza_dia <- dpois(1, lambda_dia)
p <- round(p_una_poliza_dia,4)

cat("Probabilidad de vender una póliza en un día dado:", p_una_poliza_dia,"\n")
cat("Probabilidad de vender una póliza en un día dado (4 decimales):", p,"\n")

# Calcule la media, la varianza y la desviación estándar de la distribución de probabilidad que se infiere de este problema
media <- lambda
varianza <- lambda
desviacion_estandar <- sqrt(lambda)

cat("Media:", media, "\n")
cat("Varianza:", varianza, "\n")
cat("Desviación estándar:", desviacion_estandar, "\n")

