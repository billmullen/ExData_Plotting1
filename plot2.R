source("load.R")

vals$dt <- strptime(paste(vals$Date, vals$Time,sep=","), format='%d/%m/%Y,%H:%M:%S')
png(filename="plot2.png", width=480, height=480)

plot(vals$dt, vals$Global_active_power, type='l', xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
