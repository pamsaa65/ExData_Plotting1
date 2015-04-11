##############################################################################
## Exploratory Analysis - Course Project 1 
## Plot 2

source("loadData.R")

### Activate for locale != english
lct <- Sys.getlocale("LC_TIME") ###
Sys.setlocale("LC_TIME", "C") ###

#Create file device PNG, 480x480 (default size)
png(filename="plot4.png", width=480, height=480, units="px")

par(mfcol=c(2,2)) #, mar=c(4,4,2,1), oma=c(0,0,2,0))
with(datasubset, { 
    
    plot(Datetime, Global_active_power, type="l", 
         xlab="", ylab="Global Active Power (kilowatts)")
    
    plot(Datetime, Sub_metering_1, type="l", 
         xlab="", ylab="Energy submetering", col="grey")
    lines(Datetime,Sub_metering_2,col="red")
    lines(Datetime,Sub_metering_3,col="blue")
    legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),  
       col=c("grey","blue","red"), pch=95)

    plot(Datetime, Voltage, type="l", xlab="datetime")

    plot(Datetime, Global_reactive_power, type="l",xlab="datetime")
} )

#dev.copy(png, "plot4.png")
dev.off()

Sys.setlocale("LC_TIME", lct) ###

