hhpwc <- read.csv("household_power_consumption.txt",sep=";",na.strings="?")

subs <- subset(hhpwc,Date %in% c("1/2/2007","2/2/2007"))

png(file = "plot1.png")

hist(subs$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
