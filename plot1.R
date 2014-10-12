## Coursera :: ExploratoryDataAnalysis :: CourseProject1 :: plot1.R
## ======================================================================== 
## (11th October 2014)
## Author: Flic Anderson
##

## AIM:  create plot1.png 

# load and subset the data
source("dataOperations.R")

# set up graphics device for plot
png(file="plot1.png")
# plot 
hist(datA$Global_active_power,
     col="red",
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", 
     ylab="Frequency"
)
# write plot to graphics device
dev.off()
