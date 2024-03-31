library(xtable)
library(ggplot2)
data <- read.csv("./data/durezaAluminio.csv")
fd_simp <- data.frame(data)
# Ramos e folhas
# stem(data$Dureza, scale = 2)

# DIstribuição de frequências simples
print(xtable(data.frame(table(data)), type = "latex"), file = "./output/03212024_Output_DistribuicaoFrequenciaSimplesDurezaAluminio.tex")

# Distribuição de frequência copm intervalos
k <- nclass.Sturges(data$Dureza)
h <- ceiling((max(data$Dureza) - min(data$Dureza)) / k)
int_brek <- seq(min(data$Dureza), max(data$Dureza) + h, h)
intervals <- cut(data$Dureza, int_brek, right = FALSE)

fd <- data.frame(table(intervals))
print(xtable(fd, type = "latex"), file = "./output/03212024_Output_DistribuicaoFrequenciaIntervaloDurezaAluminio.tex")

# Gerar representação gráfica por histograma
pdf(file = "./output/03212024_Output_HistogramaDurezaAluminio.pdf")
p <- hist(x = sort(data$Dureza), breaks = int_brek)
print(p)
dev.off()


pdf(file = "./output/03212024_Output_BoxPlotDurezaAluminio.pdf")
box_plot <- ggplot2::ggplot(fd_simp, aes(y = `Dureza`)) +
    ggplot2::geom_boxplot(fill = "slateblue", alpha = 0.2) +
    theme(
        axis.title.x = element_blank(),
        axis.text.x = element_blank(),
        axis.ticks.x = element_blank()
    )
print(box_plot)
dev.off()
