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

data$Global_active_power<-as.character(data$Global_active_power)
data<-data[data$Global_active_power!="?",]
data$Global_active_power<-as.numeric(data$Global_active_power)

# Screen graphic for Plot 2
plot(data$posixDate, data$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)")
lines(data$posixDate, data$Global_active_power)

# PNG graphic for Plot 2
dev.copy(png, "Plot2.png")
dev.off()




