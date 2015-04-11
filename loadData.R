##############################################################################
## Exploratory Analysis - Course Project 1 
## Load Data
## pamsaa65 (Spain)

# From read.table help page: 
# Less memory will be used if colClasses is specified 
# because otherwise all columns are read as character columns and then converted.
# And less if specified as one of the six atomic vector classes 
# (logical, integer, numeric, complex, character, raw).

# read classes from the first n rows (n=5)
#tabfrows <- read.table(file="data/household_power_consumption.txt", header=TRUE, 
#                        sep=";", dec=".", stringsAsFactors=FALSE, na.strings="?",
#                        nrows = 5)
#classes <- sapply(tabfrows, class); rm(tabfrows)

dataset <- read.table(file="data/household_power_consumption.txt", header=TRUE, 
                      sep=";", dec=".", stringsAsFactors=FALSE, na.strings="?",
#                      colClasses = classes)
                     colClasses = c( "character","character","numeric",
                                     "numeric", "numeric","numeric", 
                                     "numeric", "numeric", "numeric"))


# Select data from 2007-02-01 to 2007-02-02
fini<-as.Date("2007-02-01")
ffin<-as.Date("2007-02-02")
dataset$Date <- as.Date(dataset$Date, "%d/%m/%Y")
datasubset<-subset(dataset, (dataset$Date >= fini &  dataset$Date <= ffin))
rm(dataset) # delete big dataset

# Concatenate date and time
datasubset$Datetime <- with(datasubset, as.POSIXct(paste(Date,Time)))
#datsubset$Date<-NULL
#datsubset$Time<-NULL

