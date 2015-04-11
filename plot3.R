##############################################################################
## Exploratory Analysis - Course Project 1 
## Plot 2

source("loadData.R")

### Activate for locale != english
lct <- Sys.getlocale("LC_TIME") ###
Sys.setlocale("LC_TIME", "C") ###

#Create file device PNG, 480x480 (default size)
png(filename="plot3.png", width=480, height=480, units="px")

with(datasubset, { 
    plot(Datetime, Sub_metering_1, type="l", 
             xlab="", ylab="Energy submetering", col="grey")
    lines(Datetime,Sub_metering_2,col="red")
    lines(Datetime,Sub_metering_3,col="blue")
} )

legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),  
       col=c("grey","blue","red"), pch=95)

#dev.copy(png, "plot3.png")
dev.off()

Sys.setlocale("LC_TIME", lct) ###

