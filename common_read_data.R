read_data <- function () {
	# reading the data file
    big_data <- read.table("household_power_consumption.txt", header=TRUE,
                           sep=";", na.strings="?", nrows=2075259)
    # converting Date column to Date format
    big_data$Date <- as.Date(big_data$Date, format="%d/%m/%Y")
    # subsetting data to particular dates
    data <- subset(big_data, big_data$Date == "2007-02-01" | big_data$Date == "2007-02-02")
    # creating new column to represent timestamp (datetime) for plot 2, 3, 4
    data$timestamp <- strptime( paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")
    data
}