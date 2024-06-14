# Vector de datos de horas programando por semana
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
  "11.0 - 16.5 horas", "0.00 - 5.50 horas", "0.00 - 5.50 horas"
)

# Convertir los intervalos de horas a sus puntos medios
convertir_a_punto_medio <- function(intervalo) {
  if (intervalo == "0.00 - 5.50 horas") return(2.75)
  if (intervalo == "5.50 - 11.0 horas") return(8.25)
  if (intervalo == "11.0 - 16.5 horas") return(13.75)
  if (intervalo == "16.5 - 22.0 horas") return(19.25)
  if (intervalo == "22.0 - 27.5 horas") return(24.75)
}

# Aplicar la función de conversión a punto medio
horas_programando_numerico <- sapply(horas_programando, convertir_a_punto_medio)

# Calcular la mediana
mediana <- median(horas_programando_numerico)

# Calcular la media
media <- mean(horas_programando_numerico)

# Mostrar resultados
cat("Mediana:", mediana, "\n")
cat("Media:", media, "\n")
# Calcular la varianza
varianza <- var(horas_programando_numerico)

# Calcular la desviación estándar
desviacion_estandar <- sd(horas_programando_numerico)

# Mostrar resultados
cat("Varianza:", varianza, "\n")
cat("Desviación estándar:", desviacion_estandar, "\n")

