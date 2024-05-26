# LABORATORIO N°5: DISTRIBUCIONES DISCRETAS 

# La probabilidad de que un hombre acierte en el blanco es 1/4. Si dispara 10 veces,
# a. ¿Cuál es la probabilidad de que acierte exactamente en 3 ocasiones?
# b. ¿Cuál es la probabilidad de que acierte menos de 4 veces?
# c. ¿Cuál es la probabilidad de que acierte por lo menos en 3 ocasiones?

# Identificar la variable X, tipo de distribución discreta y demás datos en el texto.

# X = “Número de aciertos”
#X->B(n,p)
#p = 0.25
#q = 1-0.25
#n = 10

# Tenemos en RStudio los siguientes comandos para una Distribución Binomial:
  
#Comandos para una distribución binomial:
#   dbinom(x,n,p) #Para la situación P[X=x]
#   pbinom(x,n,p) #Para la situación P[X<=x], nos da la acumulada a la izquierda desde 0 hasta x
#   1-pbinom(x,n,p) #Para la situación P[X>x] = 1-P[X<=x]

# a. ¿Cuál es la probabilidad de que acierte exactamente en 3 ocasiones?
# Hemos identificado que n = 10, p = 0.25:
# P[X=3] = rpta1a
rpta1a<-dbinom(3,10,0.25)
print(rpta1a)

# b. ¿Cuál es la probabilidad de que acierte menos de 4 veces?
#Hemos identificado que n = 10, p = 0.25 y nos piden P[X<4] = P[X<=3], entonces:
# P[X<4] = rpta1b
rpta1b<-pbinom(3,10,0.25) # Esto es lo mismo que decir P[X<=3]= P[X=3]+ P[X=2] + P[X=1]+P[X=0]
print(rpta1b)

# c. ¿Cuál es la probabilidad de que acierte por lo menos en 3 ocasiones?
#Hemos identificado que n = 10, p = 0.25 y nos piden P[X>=3] = 1- P[X<=2], entonces:
# P[X>=3] = rpta1c
rpta1c<- 1 - pbinom(2,10,0.25) # pbinom(2,10,0.25) es lo mismo que decir P[X<=2] = P[X=2]+ P[X=1]+P[X=0]
print(rpta1c)
