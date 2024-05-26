# LABORATORIO N°3: MEDIDAS DE POSICIÓN Y FORMA

# Los datos que se presentan a continuación corresponden a las notas de matemática de tres secciones:
# Compare la dispersión, el mejor rendimiento académico de las notas de las tres secciones en un
# diagrama de cajas.

# Introducir la data: 

# Notas
A<-c(10,8,12,11,13,12,8,10,8,12,11,13,12,8,10,11)
B<-c(10,11,12,13,14,13,14,12,10,11,12,13,14,13,14,12)
C<-c(11,10,13,16,18,10,15,16,19,20,18,17,15,13,12,14)

# Hallamos el diagrama de cajas
boxplot(A,B,C,horizontal = TRUE)
