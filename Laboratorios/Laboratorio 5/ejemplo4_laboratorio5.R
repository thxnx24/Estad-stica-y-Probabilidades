# LABORATORIO N°5: DISTRIBUCIONES DISCRETAS 
# EJEMPLO 4: DISTRIBUCIÓN DE PASCAL
# De un grupo de 50 esquizofrénicos, 12 padecen alteraciones cerebrales. calcule la probabilidad de que padezcan tal alteración:
# a) el primero con alteración cerebral se encuentre en la octava consulta de historiales.
# b) el tercero con alteración cerebral se encuentre en la décima consulta de historiales.

# Identificar la variable X, tipo de distribución discreta y demás datos en el texto. 
# Parámetros de la distribución Pascal
r <- 1 # Número de éxitos requeridos
p <- 0.24 # Probabilidad de éxito en cada ensayo
x <- 8 # Número de ensayos

# b) Calcule la probabilidad de que padezcan el primero con alteración cerebral se encuentre en la octava consulta de historiales.
prob <- dnbinom(x - r, size = r, prob = p)
print(prob)

# C) Calcule la probabilidad de que padezcan tal alteración el tercero con alteración cerebral se encuentre en la décima 
# consulta de historiales.
r <- 3 # Número de éxitos requeridos
p <- 0.24 # Probabilidad de éxito en cada ensayo
x <- 10 # Número de ensayos
# el primero con alteración cerebral se encuentre en la octava consulta de historiales
prob <- dnbinom(x - r, size = r, prob = p)
print(prob)

