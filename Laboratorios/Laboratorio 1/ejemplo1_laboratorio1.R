#LABORATORIO 1: ORGANIZACIÓN DE DATOS: VARIABLE CUALITATIVA Y CUANTITATIVA 

#Se ha clasificado a 20 trabajadores de la empresa Transa S.A. según su nivel de estudios obteniéndose
#los siguientes resultados: 1 1 4 3 3 3 2 2 4 2 2 1 4 2 3 2 3 4 2 3.
# Donde 1 Sin estudios, 2 Estudios primarios, 3 Estudios Secundarios, 4 Estudios Superiores
# a. Hallar la tabla de frecuencias
# b. Realizar las gráficas respectivas
# c. Hallar el número de trabajadores con estudios secundarios
# d. Hallar el porcentaje de trabajadores sin estudios


# Introducir la data y hacemos el cambio de la data a variable cualitativa
x <- c(1,1,4,3,3,3,2,2,4,2,2,1,4,2,3,2,3,4,2,3) # data

y=factor(x,levels=c(1,2,3,4),labels=c("Sin estudios","Estudios primarios", "Es
tudios secundarios", "Estudios superiores"))
head(y) # muestra el panorama de los datos

# Hallamos la tabla de frecuencias:
Freq=table(y)
fi1 = prop.table(Freq)
Porc1= prop.table(Freq)*100
tabla1 = cbind(Freq, fi1,Porc1)
tabla1

# Hallamos el gráfico de barras:
# Grafico de barras
# Frecuencia Absoluta
barplot(Freq)

# Hallamos la gráfica circular o pastel:
# Frecuencia relativa Percentual
porcentaje<-c(15,35,30,20)
etiqueta<-c(paste(porcentaje,"%",sep=""))
colores<-c("green","pink","red","blue")
pie(porcentaje,labels=etiqueta,clockwise=TRUE,col=c("green","pink","red","blue")
    , main = "Diagrama circular del Nivel de Estudio de los trabajadores")
legend("bottomright",c("Sin estudios", "Estudios primarios", "Estudios Secundarios", "Estudios superiores"), cex=0.6,fill=colores)

