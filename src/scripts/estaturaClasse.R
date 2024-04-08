library(xtable)
data <- read.csv("./../data/estaturaClasse.csv")

freq_rel_table <- data.frame(
    freqAcum = cumsum(data$freq),
    freqReq = (data$freq / sum(data$freq)),
    freqRelAcum = cumsum((data$freq) / sum(data$freq))
)

print(xtable(freq_rel_table, type = "latex"), file = "./../output/04072024_Output_TabelaFrequenciasRelativasEstaturaClasse.tex")