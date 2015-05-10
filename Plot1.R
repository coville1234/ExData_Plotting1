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

# Format the data
data$Date1<-strftime(as.Date(data$Date, format="%e/%m/%Y"), format="%Y-%m-%d")
data$posixDate<-ymd_hms(paste(data$Date1, data$Time))

# Data prep for Plot 1
gap<-as.character(data$Global_active_power)
gap<-gap[gap!="?"]
gap<-as.numeric(gap)

# Screen graphic for Plot 1
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# PNG graphic for Plot 1
dev.copy(png, "Plot1.png")
dev.off()




