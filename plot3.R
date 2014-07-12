# include common read_data function
source("common_read_data.R")

plot_sub_metering <- function(data) {
	# creating plot with empty space for points
    plot(data$timestamp, data$Sub_metering_1, col="black", type="n",
         ylab="Energy sub metering", xlab="")
    # feel it with different colored points
    points(data$timestamp, data$Sub_metering_1, col="black", type="l")
    points(data$timestamp, data$Sub_metering_2, col="red", type="l")
    points(data$timestamp, data$Sub_metering_3, col="green", type="l")
    # setting the legend
    legend("topright", col=c("black", "red", "green"),
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1))
    dev.copy2pdf(file="plot3.pdf")
}

data <- read_data()
plot_sub_metering(data)