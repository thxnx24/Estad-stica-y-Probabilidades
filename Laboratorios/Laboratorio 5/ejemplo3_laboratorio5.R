# LABORATORIO N°5: DISTRIBUCIONES DISCRETAS 

# Una prueba de resistencia de soldadura consiste en poner carga en uniones soldadas hasta que se
# dé una ruptura. Para cierto tipo de soldadura, 80% de las rupturas ocurre en la propia soldadura,
# mientras que otro 20% se da en las vigas. Se prueba cierto número de soldaduras. Sea 𝑋 el número
# de pruebas, incluyendo la primera prueba que da como resultado ruptura de la viga.
# a) ¿Cuál es la distribución de 𝑋?
# b) Calcule la probabilidad de que ocurra una ruptura de viga antes de la tercera prueba.
# c) Calcule la esperanza y varianza de 𝑋.


# Identificar la variable X, tipo de distribución discreta y demás datos en el texto. 
# “Número de pruebas realizadas hasta obtener la primera ruptura de viga”
# Éxito=”ruptura de viga𝑎”
# X->𝐺𝑒𝑜𝑚(𝑝)
# p= 0.2

# b) Calcule la probabilidad de que ocurra una ruptura de viga antes de la tercera prueba.
p <- 0.2
# Función de probabilidad para X < 3
prob <- pgeom(1, prob = p) # Usamos 4 porque en R pgeom(k, p) da P(X <= x)
print(prob)

# c) Calcule la esperanza y varianza de 𝑋.
# Esperanza
mean <- 1 / p
print(mean)

# Varianza
variance <- (1 - p) / (p^2)
print(variance)

