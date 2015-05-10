library(graphics)
library(grDevices)
library(lubridate)

# This needs to be changed to reflect teh current working directory that all of the R files have been saved to
setwd("/Users/coville1234/Documents/Coursera/Exploratory Data Analysis/ExData_Plotting1")

# Read the data
data<-read.table("household_power_consumption.txt", header=T, sep=";")

# Filter the data
data$Date<-as.character(data$Date)
data<-data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

data$Sub_metering_1<-as.character(data$Sub_metering_1)
data<-data[data$Sub_metering_1!="?",]
data$Sub_metering_1<-as.numeric(data$Sub_metering_1)

data$Sub_metering_2<-as.character(data$Sub_metering_2)
data<-data[data$Sub_metering_2!="?",]
data$Sub_metering_2<-as.numeric(data$Sub_metering_2)

# Screen graphic for Plot 3
plot(data$posixDate, data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(data$posixDate, data$Sub_metering_1, col="black")
lines(data$posixDate, data$Sub_metering_2, col="red")
lines(data$posixDate, data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

# PNG graphic for Plot 3
dev.copy(png, "Plot3.png")
dev.off()



