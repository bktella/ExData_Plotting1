
## reads the source from readData.R file
## checks if variable a1 already exists in the environment
## if not, read the data from source file using the
## readData() function from readData.R
source("readData.R")
if (!exists("a1")) a1 <- readData()

## create a new png device with filename plot1.png
## with width and height of 480 px and white background
png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white") 

## creates a red histogram of Global Active Power 
## with x lable being "Global Active Power (kilowatts)"
## and main plot title being "Global Active Power"
hist(a1$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")

## closes the png device
dev.off()