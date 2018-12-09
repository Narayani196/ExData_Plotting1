download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "housing.zip")
unzip("housing.zip")
housing =  read.table("household_power_consumption.txt", sep = ';', header = TRUE)
subSetData <- housing[housing$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, as.numeric(subSetData$Global_active_power), type = "l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()