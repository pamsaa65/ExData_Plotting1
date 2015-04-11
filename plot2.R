##############################################################################
## Exploratory Analysis - Course Project 1 
## Plot 2

source("loadData.R")

### Activate for locale != english
lct <- Sys.getlocale("LC_TIME") ### 
Sys.setlocale("LC_TIME", "C") ### 

#Create file device PNG, 480x480 (default size)
png(filename="plot2.png", width=480, height=480, units="px")

with(datasubset, plot(Datetime, Global_active_power, type="l", 
                      xlab="", ylab="Global Active Power (kilowatts)"))

#dev.copy(png, "plot2.png")
dev.off()

Sys.setlocale("LC_TIME", lct) ### 

