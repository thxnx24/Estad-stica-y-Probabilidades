# Parámetros de la distribución normal
mu <- 50
sigma <- 10

# Parte (a)
# Probabilidad de que la demanda esté entre 46 y 54 kilogramos
p_a <- pnorm(54, mean = mu, sd = sigma) - pnorm(46, mean = mu, sd = sigma)
print(paste("Parte (a):", p_a))

# Parte (b)
# Cantidad de producto para satisfacer la demanda en el 89.8% de los meses
k <- qnorm(0.898, mean = mu, sd = sigma)
print(paste("Parte (b):", k))

# Parte (c)
# Probabilidad de que la utilidad diaria supere los 170 soles
# Utilidad U = 2.4X + 20 -> X = (U - 20) / 2.4
X_c <- (170 - 20) / 2.4
p_c <- 1 - pnorm(X_c, mean = mu, sd = sigma)
print(paste("Parte (c):", p_c))

# Parte (d)
# Probabilidad de que la demanda total de 3 días supere los 116 kilogramos
mu_Y <- 3 * mu
sigma_Y <- sqrt(3) * sigma
p_d <- 1 - pnorm(116, mean = mu_Y, sd = sigma_Y)
print(paste("Parte (d):", p_d))

# Parte (a) - Gráfica
x <- seq(mu - 4 * sigma, mu + 4 * sigma, length = 1000)
y <- dnorm(x, mean = mu, sd = sigma)
x_fill <- seq(46, 54, length = 100)
y_fill <- dnorm(x_fill, mean = mu, sd = sigma)

plot(x, y, type = "l", main = "Distribución Normal (μ=50, σ=10)", ylab = "Densidad de probabilidad", xlab = "Demanda (kg)")
polygon(c(46, x_fill, 54), c(0, y_fill, 0), col = "skyblue", border = NA)
abline(v = 46, col = "red", lty = 2)
abline(v = 54, col = "red", lty = 2)

