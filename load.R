# Load the data into R
fullZipFile <- "household_power_consumption.zip"
fullTxtFile <- "household_power_consumption.txt"
filteredTxtFile <- "filtered.txt"
wgetCmd <- paste("wget -O ", fullZipFile, " https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", sep="")
if (! file.exists(filteredTxtFile)) {
  system(wgetCmd)
  system(paste("unzip", fullZipFile))
  system(paste("head -1", fullTxtFile, " > ", filteredTxtFile))
  system(paste("grep \"^[12]\\/2\\/2007;\"", fullTxtFile, " >>", filteredTxtFile))
}
vals <- read.table(filteredTxtFile, header=TRUE, sep=";")
