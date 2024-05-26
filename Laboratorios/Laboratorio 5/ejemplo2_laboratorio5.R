# LABORATORIO N°5: DISTRIBUCIONES DISCRETAS 

# Cuando se graba un comercial de tv la probabilidad de que un actor recite correctamente el dialogo
# de su toma es de 0.3. ¿Cuál es la probabilidad que el actor recite correctamente su dialogo en la 6ta
# vez, además calcule su esperanza y desviación estándar?

# Identificar la variable X, tipo de distribución discreta y demás datos en el texto

# “Número de intentos hasta que recite correctamente”
# Éxito=” recite correctamente”
# X->𝐺𝑒𝑜𝑚(𝑝)
# p= 0.3

# Tenemos en RStudio los siguientes comandos para una Distribución de geométrica:
p <- 0.3
# Función de probabilidad para X = 6 (Numero de intentos hasta que recite correctamente
prob <- dgeom(5, prob = p) # Usamos 5 porque en R dgeom(k, p) da P(X = x+1)
print(prob)

# Esperanza
mean <- 1 / p
print(mean)

# Varianza
variance <- (1 - p) / (p^2)
print(variance)

