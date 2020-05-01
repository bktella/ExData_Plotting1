
## reads the source from readData.R file
## checks if variable a1 already exists in the environment
## if not, read the data from source file using the
## readData() function from readData.R
source("readData.R")
if (!exists("a1")) a1 <- readData()

## create a new png device with filename plot4.png
## with width and height of 480 px and white background
png(filename = "plot4.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white") 


## creates a frame for 4 plots (2 x 2)
## with topleft being the first one and fills by column (mfcol)
par(mfcol=c(2,2))

## plot#1 (top left)
## plot Global Active Power vs the date/time
## with type = line
## y label = "Global Active Power"
plot(a1$newDate,a1$Global_active_power, type="l", ylab="Global Active Power", xlab="")

## plot#2 (bottom left)
## plot Energy Sub metering vs the date/time
## with type = stairstep (S)
## y label = "Global Active Power"

## creates and empty canvas (type = "n")
plot(a1$newDate,a1$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")

## adds Sub_metering_1 lines (type = "l") with col = "black"
points(a1$newDate, a1$Sub_metering_1, type="l", col="black")

## adds Sub_metering_1 lines (type = "l") with col = "red"
points(a1$newDate, a1$Sub_metering_2, type="l", col="red")

## adds Sub_metering_1 lines (type = "l") with col = "blue"
points(a1$newDate, a1$Sub_metering_3, type="l", col="blue")

## adds legend
legend("topright", col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1)


## plot#3 (top right)
## plot voltage vs. datetime
plot(a1$newDate,a1$Voltage, type="l", ylab="Voltage", xlab="datetime")

## plot#4 (bottom right)
## plot Global_reactive_power vs. datetime
plot(a1$newDate,a1$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")


## closes the png device
dev.off()