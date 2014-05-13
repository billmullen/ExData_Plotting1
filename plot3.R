# Load the data into R
fname <- "filtered.txt"
system("head -1 household_power_consumption.txt > filtered.txt")
system("grep \"^[12]\\/2\\/2007;\" household_power_consumption.txt >> filtered.txt")
vals <- read.table(fname, header=TRUE, sep=";")

vals$dt <- strptime(paste(vals$Date, vals$Time,sep=","), format='%d/%m/%Y,%H:%M:%S')
png(filename="plot3.png", width=480, height=480)

plot(vals$dt, vals$Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
lines(vals$dt, vals$Sub_metering_2, type='l', col="red")
lines(vals$dt, vals$Sub_metering_3, type='l', col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red","blue"))
dev.off()
