readData <- function() {

        ## Reads data from .txt file, with separator = ";"
        ## and na strings = "?"
        data <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")

        ## subsets the data to choose only the data 
        ## from the dates 2007-02-01 and 2007-02-02.
        a1 <- subset(data, (Date == "1/2/2007" | Date == "2/2/2007"))
        
        ## creates newDate column where the dates and times
        ## are converted into POSIXlt format for easier usage
        ## and appends the created column to the original subset 
        newDate <- paste(a1$Date, a1$Time, sep=" ")
        newDate <- strptime(newDate,"%d/%m/%Y %H:%M:%S")
        a1 <- cbind(a1, newDate)
        
        a1

}