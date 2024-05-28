
m <- 3  # Numero de defectuosos 
n <- 7  # Numero de no defectuosos 
k <- 4  # Tamaño de la muestra
N <- 10 # Poblacion

# Probabilidades para cada posible caso
prob_0 <- dhyper(0, m, n, k)
prob_1 <- dhyper(1, m, n, k)
prob_2 <- dhyper(2, m, n, k)
prob_3 <- dhyper(3, m, n, k)

prob_0
prob_1
prob_2
prob_3

#Calcular la media y la varianza
media <- ((m* k) / N)
media

varianza <- k * (m/N) * (1 - (m/N))* ((N-k)/(N-1))
varianza

