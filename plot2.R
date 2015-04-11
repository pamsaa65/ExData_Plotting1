##############################################################################
## Exploratory Analysis - Course Project 1 
## Plot 2
## pamsaa65 (Spain)

source("loadData.R")

### Activate for locale != english
lct <- Sys.getlocale("LC_TIME") ### 
Sys.setlocale("LC_TIME", "C") ### 

# Create file device PNG, 480x480 (default size)
png(filename="plot2.png", width=480, height=480, units="px")

# Plot
par(oma = c(0, 0, 0, 1))
with(datasubset, 
     plot(Datetime, Global_active_power, type="l", 
        xlab="", ylab="Global Active Power (kilowatts)"))
mtext("(by pamsaa65)", side=4, outer=TRUE, col="grey")

# Close device
dev.off()

# Reset locale
Sys.setlocale("LC_TIME", lct) ### 

