# Define breaks and frequencies
breaks <- c(30, 35, 40, 45, 50, 55, 60, 65, 70)
data <- read.csv("./data/vendasSemanais.csv")
max_data <- max(data$freq)

pdf(file = "./output/04092024_Output_BoxPlotVendasSemanais.pdf")
# Create an empty plot
p <- plot(1, type="n", xlim=c(30, max(breaks)), ylim=c(0, max_data), 
     xlab="Value", ylab="Frequency", main="Histogram")

# Plot rectangles representing the bins
for (i in 1:length(breaks)) {
  rect(breaks[i], 0, breaks[i+1], data$freq[i])
}
dev.off()
