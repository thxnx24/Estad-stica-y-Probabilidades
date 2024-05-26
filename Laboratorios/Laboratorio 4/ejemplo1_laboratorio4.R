# LABORATORIO N°4: DIAGRAMA DEL ÁRBOL Y BAYES

# En una empresa del total de trabajadores, se tiene que el 50% son técnicos profesionales, el 30% son
# oficinistas y el 20% personal de servicio; además se tiene que el 8% de los profesionales, 9% de los
# oficinistas y el 10% del personal de servicio, son provincianos (nacidos fuera de Arequipa).
# Supóngase que se selecciona un trabajador al azar y resulta ser provinciano.
# Calcular la probabilidad de que el trabajador sea Técnico Profesional

# Instalar la Liberia (openintro)
# TEOREMA DE BAYES
library(openintro)

# Hallamos el diagrama del árbol
treeDiag(c("1", "2"),
         p1 = c(0.5,0.3,0.2),
         p2 = list(round(c(0.08,0.92),3), round(c(0.09,0.91),3), round(c(0.1,0.9
         ),3)),
         out1 = c("TP", "O", "PS"),
         out2 = c("PROVINCIA", "NO_PROVINCIA"), digits = 3)

# Hallamos la probabilidad total
Probabilidad_Total<-sum(0.04,0.027,0.02)
Probabilidad_Total

# Hallamos la probabilidad que se pide
P=(0.04)/Probabilidad_Total
P

