# LABORATORIO 1: ORGANIZACIÓN DE DATOS: VARIABLE CUALITATIVA Y CUANTITATIVA 
# Se revisaron 20 lotes de 48 artículos cada uno y se encontró el siguiente número de artículos defectuosos por lote:
# 3, 2, 5,0, 1, 3, 2, 1,0, 1, 3, 4, 2, 4, 4, 3, 4, 3, 2, 3.
# a. Construir la tabla de frecuencias.
# b. Graficar .
# c. ¿Qué porcentaje de lotes tienen dos o más pero menos de 4 artículos defectuosos?


#  Introducir la data , en la ventana de digitación debemos introducir la data
data <- c(3, 2, 5,0, 1, 3, 2, 1,0, 1, 3, 4, 2, 4, 4, 3, 4, 3, 2, 3)

# Hallamos la tabla de frecuencias e imprimimos resultados: 
# Frecuencia Absoluta
frec_abs <- table(data)
# Frecuencia Relativa
frec_rel <- prop.table(frec_abs)
# Frecuencia Porcentual
frec_porc <- prop.table(frec_abs) * 100
# Crear un data.frame con los resultados
resultados <- data.frame(data = names(frec_abs),
                         fi = as.numeric(frec_abs),
                         hi = as.numeric(frec_rel),
                         pi = as.numeric(frec_porc))
# Imprimir la tabla de resultados
print(resultados)


# Hallamos el gráfico de barras:
# Frecuencia absoluta: Grafico de barras
barplot(table(data),main="Articulos defectuosos por lote",xlab = "Numero de arti
culos defectuosos", ylab="Numero de lotes",col = "green", border = "blue",)

