hhpwc <- read.csv("household_power_consumption.txt",sep=";",na.strings="?")

subs <- subset(hhpwc,Date %in% c("1/2/2007","2/2/2007"))
subtimes <- strptime(paste(subs$Date,subs$Time),"%d/%m/%Y %H:%M:%S")

png(file = "plot3.png")

plot(subtimes, subs$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(subtimes, subs$Sub_metering_2, col="red")
lines(subtimes, subs$Sub_metering_3, col="blue")

legend("topright",lty=1,col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
