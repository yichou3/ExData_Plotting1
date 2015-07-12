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
png(filename='plots/plot3.png',width=480,height=480,units='px')

## make the graph
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(as.POSIXlt(data$Date+hms(data$Time)),data$Sub_metering_1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(as.POSIXlt(data$Date+hms(data$Time)),data$Sub_metering_2,col=lncol[2])
lines(as.POSIXlt(data$Date+hms(data$Time)),data$Sub_metering_3,col=lncol[3])

## add legend
legend('topright',legend=lbls,col=lncol,lty='solid')

## turn off the device
x<-dev.off()
