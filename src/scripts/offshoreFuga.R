raw_data <- read.csv("./data/offshoreFuga.csv", sep = ";")
data <- data.frame(raw_data)
segundos_data <- data$Segundos
# Steam and leaf plot
print(stem(segundos_data))
# tamanho da amostra
print(length(segundos_data))
# média amostral
print(mean(segundos_data))
# mediana amostral
print(median(segundos_data))

minutos_data <- data$Minutos
# Steam and leaf plot
print(stem(minutos_data, scale = 0.5))
# tamanho da amostra
print(length(minutos_data))
# média amostral
print(mean(minutos_data))
# mediana amostral
print(median(minutos_data))