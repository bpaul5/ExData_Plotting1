data <- read.table("/Users/bindupaul/Desktop/FILE/data.txt", header=TRUE, sep=";")
## data contains 2/1/2007-2/2/2007 since my computer couldn't handle the full txt file

png("plot1.png", width=480, height=480)
## changing the pixel to 480 

hist(data[,3], col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
## creating a histogram
