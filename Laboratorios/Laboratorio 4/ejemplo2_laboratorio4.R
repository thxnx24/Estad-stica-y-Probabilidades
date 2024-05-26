# LABORATORIO N°4: DIAGRAMA DEL ÁRBOL Y BAYES

# Los clientes se encargan de evaluar los diseños preliminares de varios productos. En el pasado el 95%
# de los productos que con mayor éxito en el mercado recibieron buenas evaluaciones, el 60% de los
#productos con éxito moderado recibieron buenas evaluaciones, el 10% de productos de escaso éxito
# recibieron buenas evaluaciones. Además, el 40% de los productos han tenido mucho éxito, el 35%
# un éxito moderado y el 25% una baja aceptación.
# a) ¿Cuál es la probabilidad de que un producto obtenga una buena evaluación?
# b) Si un nuevo diseño obtiene una buena evaluación, ¿Cuál es la probabilidad de que se convierta en un producto de gran éxito?
# c) Si un producto no obtiene una buena evaluación. ¿Cuál es la probabilidad de que se convierta en un producto de gran éxito?

# Instalar la Liberia (openintro)
# TEOREMA DE BAYES
library(openintro)

# Hallamos el diagrama del árbol
treeDiag(c("1", "2"),
         p1 = c(0.4, 0.35,0.25),
         p2 = list(round(c(0.95, 0.05), 3), round(c(0.6, 0.4), 3), round(c(0.1, 0.9), 3)),
         out1 = c("ME", "EM","BA"),
         out2 = c("BE", "NO_BE"), digits = 3)

# Hallamos la probabilidad total
#a)
Probabilidad_Total<-sum(0.38,0.21,0.025)
Probabilidad_Total

# Hallamos la probabilidad que se pide
#b)
P1=(0.38)/Probabilidad_Total
P1

# Hallamos la probabilidad que se pide
#c)
P2=(0.02)/(1-Probabilidad_Total)
P2

