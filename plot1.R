# Load the data into R
fname <- "filtered.txt"
system("head -1 household_power_consumption.txt > filtered.txt")
system("grep \"^[12]\\/2\\/2007;\" household_power_consumption.txt >> filtered.txt")
vals <- read.table(fname, header=TRUE, sep=";")

png(filename="plot1.png", width=480, height=480)
hist(vals$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
