hhpwc <- read.csv("household_power_consumption.txt",sep=";",na.strings="?")

subs <- subset(hhpwc,Date %in% c("1/2/2007","2/2/2007"))
subtimes <- strptime(paste(subs$Date,subs$Time),"%d/%m/%Y %H:%M:%S")

png(file = "plot4.png")

par(mfrow=c(2,2))

# Top Left
plot(subtimes, subs$Global_active_power,type="l",xlab="",ylab="Global Active Power")

# Top Right
plot(subtimes, subs$Voltage,type="l",xlab="datetime",ylab="Voltage")

# Bottom Left
plot(subtimes, subs$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(subtimes, subs$Sub_metering_2, col="red")
lines(subtimes, subs$Sub_metering_3, col="blue")
legend("topright",bty="n",lty=1,col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# Bottom Right
plot(subtimes,subs$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

dev.off()
