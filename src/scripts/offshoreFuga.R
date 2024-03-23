data <- read.csv("./data/offshoreFuga.csv")
data2 <- as.numeric(data$Segundos)


# tamanho da amostra
print(length(data2))
# média amostral
print(mean(data2))
# mediana amostral
print(median(data2))