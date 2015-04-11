##############################################################################
## Exploratory Analysis - Course Project 1 
## Plot1

source("loadData.R")

#Create file device PNG, 480x480 (default size)
png(filename="plot1.png", width=480, height=480, units="px")

# Histogram
hist(datasubset$Global_active_power, col="red", 
     xlab="Global Active Powers (kilowatts)", 
     main="Global Active Powers")

#copy graphic from screen to file device
#dev.copy(png, "plot1.png")

#close device
dev.off()

