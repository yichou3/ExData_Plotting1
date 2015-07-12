## working directory
setwd("~/Desktop/Coursera/ExploratoryDataAnalysis/Week1")

## plot folder
if (!file.exists("plots")) {
        dir.create("plots")
}

## read the cleaned data
data<-read.table("household_power_consumption_subset.txt", header=TRUE)

## open the device
png(filename='plots/plot1.png',width=480,height=480,units='px')

## make the histogram
hist(data$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")

## turn off the device
x<-dev.off()
