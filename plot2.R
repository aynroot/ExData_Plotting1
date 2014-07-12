# include common read_data function
source("common_read_data.R")

plot_timeline <- function(data) {
    plot(data$timestamp, data$Global_active_power, type='l',
         ylab="Global Active Power (kilowatts)", xlab="")

    dev.copy2pdf(file="plot2.pdf")
}

data <- read_data()
plot_timeline(data)