# Horas programando por semana
horas_programando <- c(
  "22.0 - 27.5 horas", "5.50 - 11.0 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas", "22.0 - 27.5 horas",
  "0.00 - 5.50 horas", "5.50 - 11.0 horas", "11.0 - 16.5 horas", "0.00 - 5.50 horas", "11.0 - 16.5 horas",
  "5.50 - 11.0 horas", "0.00 - 5.50 horas", "11.0 - 16.5 horas", "0.00 - 5.50 horas", "0.00 - 5.50 horas",
  "0.00 - 5.50 horas", "22.0 - 27.5 horas", "16.5 - 22.0 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas",
  "5.50 - 11.0 horas", "0.00 - 5.50 horas", "22.0 - 27.5 horas", "5.50 - 11.0 horas", "0.00 - 5.50 horas",
  "5.50 - 11.0 horas", "11.0 - 16.5 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas", "0.00 - 5.50 horas",
  "5.50 - 11.0 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas", "5.50 - 11.0 horas", "11.0 - 16.5 horas",
  "0.00 - 5.50 horas", "5.50 - 11.0 horas", "22.0 - 27.5 horas", "5.50 - 11.0 horas", "0.00 - 5.50 horas",
  "11.0 - 16.5 horas", "5.50 - 11.0 horas", "22.0 - 27.5 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas",
  "22.0 - 27.5 horas", "5.50 - 11.0 horas", "0.00 - 5.50 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas",
  "5.50 - 11.0 horas", "5.50 - 11.0 horas", "5.50 - 11.0 horas", "5.50 - 11.0 horas", "0.00 - 5.50 horas",
  "0.00 - 5.50 horas", "0.00 - 5.50 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas", "0.00 - 5.50 horas",
  "16.5 - 22.0 horas", "0.00 - 5.50 horas", "0.00 - 5.50 horas", "0.00 - 5.50 horas", "22.0 - 27.5 horas",
  "5.50 - 11.0 horas", "5.50 - 11.0 horas", "0.00 - 5.50 horas", "11.0 - 16.5 horas", "0.00 - 5.50 horas",
  "5.50 - 11.0 horas", "0.00 - 5.50 horas", "0.00 - 5.50 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas",
  "16.5 - 22.0 horas", "5.50 - 11.0 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas", "0.00 - 5.50 horas",
  "0.00 - 5.50 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas", "16.5 - 22.0 horas", "0.00 - 5.50 horas",
  "0.00 - 5.50 horas", "0.00 - 5.50 horas", "16.5 - 22.0 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas",
  "0.00 - 5.50 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas", "0.00 - 5.50 horas", "5.50 - 11.0 horas",
  "11.0 - 16.5 horas", "0.00 - 5.50 horas", "0.00 - 5.50 horas", "0.00 - 5.50 horas", "11.0 - 16.5 horas",
  "11.0 - 16.5 horas", "0.00 - 5.50 horas", "0.00 - 5.50 horas")

n <- length(horas_programando)
cat("El numero de encuestados fueron", n)

niveles <- c("0.00 - 5.50 horas", "5.50 - 11.0 horas", "11.0 - 16.5 horas", "16.5 - 22.0 horas", "22.0 - 27.5 horas")
etiquetas <- c("[0.00 - 5.50[", "[5.50 - 11.0[", "[11.0 - 16.5[", "[16.5 - 22.0[", "[22.0 - 27.5[")

y <- factor(horas_programando, levels = niveles, labels = etiquetas)

head(y)

Freq <- table(y)

# Calcular frecuencias relativas (fi1) y porcentajes (Porc1)
fi1 <- prop.table(Freq)
Porc1 <- prop.table(Freq) * 100

# Redondear a 4 decimales
fi1_rounded <- round(fi1, 4)
Porc1_rounded <- round(Porc1,4)

# Crear la tabla con frecuencias absolutas, frecuencias relativas y porcentajes redondeados
tabla1 <- cbind(Freq, fi1 = fi1_rounded, Porc1 = Porc1_rounded)

# Convertir la matriz a data frame
tabla1 <- as.data.frame(tabla1)

# Mostrar la tabla
print("Tabla de frecuencias absolutas y porcentajes redondeados a 4 decimales:")
print(tabla1)

#Frecuencia Absoluta
barplot(Freq, col = c("red", "blue", "green", "purple", "orange"), 
        main = "Distribución de Horas Programando", 
        xlab = "Intervalos de Horas", ylab = "Frecuencia")

#Frecuencia Relativa
porcentaje <- c(45.63,32.04,9.71,4.85,7.77)
etiqueta <- c(paste(porcentaje,"%",sep=""))
colores <- c("red", "blue", "green", "purple", "orange")

pie(porcentaje,labels=etiqueta,cloCkwise=TRUE,col=c("red", "blue", "green", "purple", "orange")
    , main = "Diagrama circular de Horas Programando")
legend("bottomright",c("0.00 - 5.50", "5.50 - 11.0", "11.0 - 16.5", "16.5 - 22.0", "22.0 - 27.5"), cex=0.6,fill=colores)

#Frecuencia Absoluta
frec_abs <- table(horas_programando)
# Frecuencia Relativa
frec_rel <- prop.table(frec_abs)
# Frecuencia Porcentual
frec_porc <- prop.table(frec_abs) * 100

# Crear un data.frame con los resultados
resultados <- data.frame(data = names(frec_abs),
                         Frecuencia_Absoluta = as.numeric(frec_abs),
                         Frecuencia_Relativa = round(as.numeric(frec_rel), 4),
                         Frecuencia_Procentual = round(as.numeric(frec_porc), 4))

# Ordenar el data frame en base a los niveles de horas_programando
niveles <- c("0.00 - 5.50 horas", "5.50 - 11.0 horas", "11.0 - 16.5 horas", "16.5 - 22.0 horas", "22.0 - 27.5 horas")
resultados_data <- factor(resultados$data, levels = niveles)
resultados <- resultados[order(resultados_data), ]

# Mostrar el data frame con los resultados ordenados
print(resultados)

#Medidas de tendencia centra
library(modeest)
moda <- mfv(horas_programando)
cat("La moda, es decir las horas con las que mas frecuencia programan los encuestados es de:", moda)
