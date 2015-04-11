##############################################################################
## Exploratory Analysis - Course Project 1 
## Plot 1
## pamsaa65 (Spain)

source("loadData.R")

# Create file device PNG, 480x480
png(filename="plot1.png", width=480, height=480, units="px")

# Histogram
par(oma = c(0, 0, 0, 1))
hist(datasubset$Global_active_power, 
     col="red", 
     xlab="Global Active Powers (kilowatts)", 
     main="Global Active Powers")
mtext("(by pamsaa65)", side=4, outer=TRUE, col="grey")

#copy graphic from screen to file device
#dev.copy(png, "plot1.png")

# close device
dev.off()

