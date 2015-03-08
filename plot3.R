data <- read.table("/Users/bindupaul/Desktop/FILE/DATA.txt", header=TRUE, sep=";")
## data contains 2/1/2007-2/2/2007 since my computer couldn't handle the full txt file

date <- strptime(paste(data[,1], data[,2], sep=" "), format= "%m/%d/%Y %H:%M:%S")
## formatting the data by combining the date and time

png("plot3.png", width=480, height=480)
## changing the pixel to 480

plot(date, data[,7], type="l", ylab="Energy Submetering", xlab="")
lines(date, data[,8], type="l", col="red")
lines(date, data[,9], type="l", col="blue")
## plot columns 7-8 corresponding to Sub_metering 1-3

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
## creating a legend
