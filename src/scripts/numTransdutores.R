library(xtable)
library(ggplot2)
data <- read.csv("./data/numTransdutores.csv", header = TRUE, sep = ";")

df <- data.frame(table(data))
df$"FreqRel" <- df$Freq / sum(df$Freq)
df_new <- rbind(df, data.frame(fora = "Total", t(colSums(df[, -1]))))

print(xtable(df_new, type = "latex", digits = 8), file = "./output/03312024_Output_DistribuicaoFrequenciaNumTransdutores.tex")

pdf(file = "./output/03312024_Output_BarNumTransdutores.pdf")
bar_plot <- ggplot2::ggplot(df, aes(x = `fora`, y = `Freq`)) +
    ggplot2::geom_bar(stat='identity')
print(bar_plot)
dev.off()
