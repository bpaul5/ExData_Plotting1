data <- read.table("/Users/bindupaul/Desktop/FILE/DATA.txt", header=TRUE, sep=";")
## data contains 2/1/2007-2/2/2007 since my computer couldn't handle the full txt file

date <- strptime(paste(data[,1], data[,2], sep=" "), format= "%m/%d/%Y %H:%M:%S")
## formatting the data by combining the date and time

png("plot4.png", width=480, height=480)
## changing the pixel to 480 

par(mfrow = c(2, 2)) 
## creating 4 graphs

plot(date, data[,3], type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(date, data[,5], type="l", xlab="datetime", ylab="Voltage")

plot(date, data[,7], type="l", ylab="Energy Submetering", xlab="")

lines(date, data[,8], type="l", col="red")
lines(date, data[,9], type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(date, data[,4], type="l", xlab="datetime", ylab="Global_reactive_power")
