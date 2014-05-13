source("load.R")
vals$dt <- strptime(paste(vals$Date, vals$Time,sep=","), format='%d/%m/%Y,%H:%M:%S')
png(filename="plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(vals$dt, vals$Global_active_power, type='l', xlab="", ylab="Global Active Power")
plot(vals$dt, vals$Voltage, type='l', xlab="datetime", ylab="Voltage")

plot(vals$dt, vals$Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
lines(vals$dt, vals$Sub_metering_2, type='l', col="red")
lines(vals$dt, vals$Sub_metering_3, type='l', col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red","blue"), bty="n")

plot(vals$dt, vals$Global_reactive_power, type='l', xlab="datetime", ylab="Global_reactive_power")
dev.off()
