## Set working directory
setwd("~/Desktop/Coursera/ExploratoryDataAnalysis/Week1")

## read the data
var<-c(rep('character',2),rep('numeric',7))
data<-read.table("household_power_consumption.txt",header=TRUE,na.strings="?",sep=";",colClasses=var)
data<-subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")

## convert date to date class
data$Date<-as.Date(data$Date,format="%d/%m/%Y")

## write the cleaned data to the working directory
write.table(data, file="household_power_consumption_subset.txt")


