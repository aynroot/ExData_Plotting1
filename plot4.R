# include common read_data function
source("common_read_data.R")

plot_grid <- function(data) {
    # setting 2 rows and 2 columns for plots
    par(mfrow=c(2, 2))

    # feeling cells with plots
    plot(data$timestamp, data$Global_active_power, type='l',
         ylab="Global Active Power", xlab="")

    plot(data$timestamp, data$Voltage, type='l',
         ylab="Voltage", xlab="datetime")

    plot(data$timestamp, data$Sub_metering_1, col="black", type="n",
         ylab="Energy sub metering", xlab="")

    points(data$timestamp, data$Sub_metering_1, col="black", type="l")
    points(data$timestamp, data$Sub_metering_2, col="red", type="l")
    points(data$timestamp, data$Sub_metering_3, col="green", type="l")
    legend("topright", col=c("black", "red", "green"),
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=c(1,1,1), bty="n")

    plot(data$timestamp, data$Global_reactive_power, type='l',
         ylab="Global_reactive_power", xlab="datetime")

    dev.copy2pdf(file="plot4.pdf")
}

data <- read_data()
plot_grid(data)