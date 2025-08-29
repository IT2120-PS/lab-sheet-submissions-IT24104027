setwd("C:\\Users\\ndivy\\Desktop\\IT24104027_Lab5_PS")
getwd()
Delivery_Times <- read.table("Exercise-Lab-05.txt", header = TRUE)
colnames(Delivery_Times) <- "Time"

breaks <- seq(20, 70, length.out = 10)

hist(Delivery_Times$Time,
     breaks = breaks,
     right = FALSE,          # right-open intervals
     include.lowest = TRUE,  # include 20
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     col = "lightblue",
     border = "black")

h <- hist(Delivery_Times$Time, breaks = breaks, right = FALSE, plot = FALSE)

cum_freq <- cumsum(h$counts)

plot(h$breaks[-1], cum_freq, type = "o", pch = 16, col = "red",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (upper class boundary)",
     ylab = "Cumulative Frequency")

