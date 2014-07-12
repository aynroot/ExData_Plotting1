# include common read_data function
source("common_read_data.R")

plot_hist <- function(data) {
    hist(data$Global_active_power, main="Global Active Power",
         col="red", xlab="Global Active Power (kilowatts)")
    dev.copy2pdf(file="plot1.pdf")
}

data <- read_data()
plot_hist(data)