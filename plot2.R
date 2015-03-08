data <- read.table("/Users/bindupaul/Desktop/FILE/DATA.txt", header=TRUE, sep=";")
## data contains 2/1/2007-2/2/2007 since my computer couldn't handle the full txt file

date <- strptime(paste(data[,1], data[,2], sep=" "), format= "%m/%d/%Y %H:%M:%S")
## formatting the data by combining the date and time

png("plot2.png", width=480, height=480)
## changing the pixel to 480

plot(date, data[,3], type="l", xlab="", ylab="Global Active Power (kilowatts)")
## plotting the graph 

