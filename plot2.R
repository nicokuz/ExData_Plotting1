hhpwc <- read.csv("household_power_consumption.txt",sep=";",na.strings="?")

subs <- subset(hhpwc,Date %in% c("1/2/2007","2/2/2007"))
subtimes <- strptime(paste(subs$Date,subs$Time),"%d/%m/%Y %H:%M:%S")

png(file = "plot2.png")

plot(subtimes, subs$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

dev.off()
