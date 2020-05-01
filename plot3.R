

## create a new png device with filename plot3.png
## with width and height of 480 px and white background
png(filename = "plot3.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white") 

## plot Energy Sub metering vs the date/time
## with type = stairstep (S)
## y label = "Global Active Power (kilowatts)"

## creates and empty canvas (type = "n")
plot(a1$newDate,a1$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")

## adds Sub_metering_1 lines (type = "S") with col = "black"
points(a1$newDate, a1$Sub_metering_1, type="S", col="black")

## adds Sub_metering_1 lines (type = "S") with col = "red"
points(a1$newDate, a1$Sub_metering_2, type="S", col="red")

## adds Sub_metering_1 lines (type = "S") with col = "blue"
points(a1$newDate, a1$Sub_metering_3, type="S", col="blue")

## adds legend
legend("topright", col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1)


## closes the png device
dev.off()