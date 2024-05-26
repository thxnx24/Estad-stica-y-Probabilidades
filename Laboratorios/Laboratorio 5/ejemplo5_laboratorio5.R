# LABORATORIO N°5: DISTRIBUCIONES DISCRETAS 
# EJEMPLO 5: DISTRIBUCIÓN DE PASCAL

# Una máquina produce artículos de uno en uno y de manera independiente. Se considera que el 10%
#de ellos son defectuosos. Si la máquina se detiene apenas produce el cuarto artículo defectuoso:
# a) ¿Cuál es el número esperado de artículo producidos hasta que se detiene la máquina?
# Parámetros de la distribución Pascal
r <- 4 # Número de éxitos (artículos defectuosos)
p <- 0.10 # Probabilidad de éxito (artículo defectuoso)
# Calcular el número esperado de artículos producidos
esperanza <- r / p
print(esperanza)

# b) ¿Cuál es la probabilidad de que la máquina se detenga en el décimo artículo producido?
# Parámetros
r <- 4 # Número de éxitos (artículos defectuosos)
p <- 0.10 # Probabilidad de éxito (artículo defectuoso)
k <- 10 # Número total de artículos producidos
# Número de fracasos antes de obtener el cuarto éxito
x <- k - r
# Calcular la probabilidad
probabilidad <- dnbinom(x, size = r, prob = p)
print(probabilidad)

# c) ¿Cuál es la probabilidad de que produzca al menos 7 artículos antes que la máquina se detenga?
# Parámetros del problema
r <- 4 # Número de éxitos (defectuosos)
p <- 0.10 # Probabilidad de éxito (defectuoso)
k <- 7 # Número mínimo de artículos producidos
# Calcular la probabilidad acumulada de que el número de artículos producidos se a <= 6
prob_acumulada_hasta_6 <- pnbinom(k - r - 1, size = r, prob = p)
# Calcular la probabilidad de producir al menos 7 artículos
prob_al_menos_7 <- 1 - prob_acumulada_hasta_6
# Mostrar el resultado
print(prob_al_menos_7)

