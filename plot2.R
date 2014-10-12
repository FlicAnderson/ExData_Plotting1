## Coursera :: ExploratoryDataAnalysis :: CourseProject1 :: plot2.R
## ======================================================================== 
## (11th October 2014)
## Author: Flic Anderson
##

## AIM:  create plot2.png

# load and subset the data
source("dataOperations.R")

# set up graphics device for plot
png(file="plot2.png")
# plot 
plot(
  x=datA$DateTime, 
  xlab="",
  y=datA$Global_active_power, 
  ylab="Global Active Power (kilowatts)",
  type="l"
  )
# write plot to graphics device
dev.off()
