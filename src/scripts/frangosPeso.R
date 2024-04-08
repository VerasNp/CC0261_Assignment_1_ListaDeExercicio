library(xtable)
data <- read.csv("./../data/frangosPeso.csv")

data_mean <- mean(data$freq)
print(paste("Mean: ", data_mean))

desvios <- data$freq - data_mean
variance_from_scratch <- sum(desvios^2) / (length(data$freq) - 1)
print(paste("Variance from scratch: ", variance_from_scratch))
print(paste("Variance by R: ", var(data$freq)))

relative_frequency <- data$freq / sum(data$freq)
print("Relative frequency:")
print(relative_frequency)

accumulated_relative_frequency <- cumsum(relative_frequency)
print("Accumulated relative frequency:")
print(accumulated_relative_frequency)

freq_rel_table <- data.frame(FreqRel = relative_frequency, FreqAcum = accumulated_relative_frequency)
print(xtable(freq_rel_table, type = "latex"), file = "./../output/04072024_Output_TabelaFrequenciasRelativasFrangosPeso.tex")
