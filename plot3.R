##############################################################################
## Exploratory Analysis - Course Project 1 
## Plot 3
## pamsaa65 (Spain)


source("loadData.R")

### Activate for locale != english
lct <- Sys.getlocale("LC_TIME") ###
Sys.setlocale("LC_TIME", "C") ###

# Create file device PNG, 480x480 (default size)
png(filename="plot3.png", width=480, height=480, units="px")

# Plot
par(oma = c(0, 0, 0, 1))
with(datasubset, { 
    plot(Datetime, Sub_metering_1, type="l", 
             xlab="", ylab="Energy submetering", col="grey")
    lines(Datetime,Sub_metering_2,col="red")
    lines(Datetime,Sub_metering_3,col="blue")
} )
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),  
       col=c("grey","blue","red"), pch=95)
mtext("(by pamsaa65)", side=4, outer=TRUE, col="grey")

# Close device
dev.off()

# Reset locale
Sys.setlocale("LC_TIME", lct) ###

