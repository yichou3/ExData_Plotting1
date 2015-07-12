## working directory
setwd("~/Desktop/Coursera/ExploratoryDataAnalysis/Week1")

## plot folder
if (!file.exists("plots")) {
        dir.create("plots")
}

## read the cleaned data
data<-read.table("household_power_consumption_subset.txt", header=TRUE, quote="\"")
data$Date<-as.Date(data$Date)

## open the device
png(filename='plots/plot2.png',width=480,height=480,units='px')

## make the graph
plot(as.POSIXlt(data$Date+hms(data$Time)),data$Global_active_power,ylab="Global Active Power (kilowatts)", xlab="", type="l")

## turn off the device
x<-dev.off()
