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

# Función para convertir intervalos a punto medio
convertir_a_punto_medio <- function(intervalo) {
  if (intervalo == "0.00 - 5.50 horas") return(2.75)
  if (intervalo == "5.50 - 11.0 horas") return(8.25)
  if (intervalo == "11.0 - 16.5 horas") return(13.75)
  if (intervalo == "16.5 - 22.0 horas") return(19.25)
  if (intervalo == "22.0 - 27.5 horas") return(24.75)
}

# Aplicar la función de conversión a punto medio
horas_programando_numerico <- sapply(horas_programando, convertir_a_punto_medio)

# Convertir a data frame para visualizar
df <- data.frame(Horas_Programando = horas_programando_numerico)
# Generar diagrama de caja y bigotes
boxplot(df$Horas_Programando, 
        main = "Diagrama de Caja y Bigotes de Horas Programando",
        ylab = "Horas Programando",
        col = "lightblue",
        border = "black",
        horizontal = TRUE)
  
