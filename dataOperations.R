## Coursera :: ExploratoryDataAnalysis :: CourseProject1 :: dataOperations.R
## ======================================================================== 
## (11th October 2014)
## Author: Flic Anderson
##

## AIM:  load and subset the data for plotting

# set working directory:
setwd("Z://CMEP/Rstats/Coursera_ExploratoryDataAnalysis/CourseProject1/")

# set Date & Time columns as character class, everything else as numeric type
datClasses <- c("character", "character", rep("numeric", times=7))
# load the data
datA <- read.table(
  "data/household_power_consumption.txt", 
  header=TRUE, 
  sep=";", 
  na.strings="?", 
  colClasses=datClasses, 
  nrows=2075259
  )

# show dimensions and structure
#dim(datA)
#str(datA)

# fix dates to date type
datA$Date <- as.Date(datA$Date, format="%d/%m/%Y")
  ## fix times to time format, and drop dates appended by as.POSIXct()
  ##datA$Time <- strptime(datA$Time, format="%H:%M:%S")


# subset the data (dates 2007-02-01 & 2007-02-02)
datA <- datA[which(datA$Date=="2007-02-01"|datA$Date=="2007-02-02"),]

# concat the date and time columns
datA$DateTime <- paste(datA$Date, datA$Time)
# remove additional columns (Date, Time) since that info now in DateTime
datA <- datA[, c(10,3:9)]

# report status
message("... dataset loaded and subset to object: 'datA'")

#str(datA)
datA <<- datA

# remove all things except datA object
rm(list=setdiff(ls(), c("datA")))


 