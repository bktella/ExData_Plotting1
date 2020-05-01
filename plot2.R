
## reads the source from readData.R file
## checks if variable a1 already exists in the environment
## if not, read the data from source file using the
## readData() function from readData.R
source("readData.R")
if (!exists("a1")) a1 <- readData()


## create a new png device with filename plot2.png
## with width and height of 480 px and white background
png(filename = "plot2.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white") 

## plot Global Active Power vs the date/time
## with type = stairstep (S)
## y label = "Global Active Power (kilowatts)"
plot(a1$newDate,a1$Global_active_power, type="S", ylab="Global Active Power (kilowatts)", xlab="")

## closes the png device
dev.off()