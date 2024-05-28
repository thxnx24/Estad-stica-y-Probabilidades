# Quince automóviles son llevados a una concesionaria para validar su garantía. 
# Suponga que cinco presentan graves problemas de motor mientras que diez tienen problemas 
# sin importancia. Se eligen aleatoriamente seis automóviles para componerlos 
# ¿Cuál es la probabilidad de que dos tengan problemas graves?

# Parámetros de la distribución hipergeométrica
N <- 15  # Tamaño de la población
K <- 5   # Número de éxitos en la población (problemas graves)
n <- 6   # Tamaño de la muestra
k <- 2   # Número de éxitos en la muestra (problemas graves)
  
# Calcular la probabilidad usando la distribución hipergeométrica
probabilidad <- dhyper(k, K, N - K, n)
  
# Mostrar el resultado
print(probabilidad)
## [1] 0.4195804
  
