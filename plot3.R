## Coursera :: ExploratoryDataAnalysis :: CourseProject1 :: plot3.R
## ======================================================================== 
## (11th October 2014)
## Author: Flic Anderson
##

## AIM:  create plot3.png

# load and subset the data
source("dataOperations.R")

# set up graphics device for plot
png(file="plot3.png")
# plot Sub_metering_1
plot(
  x=datA$DateTime, 
  xlab="",
  y=datA$Sub_metering_1, 
  ylab="Energy sub metering",
  type="l"
)
# add Sub_metering_2
lines(
  x=datA$DateTime, 
  y=datA$Sub_metering_2, 
  type="l",
  col="red")
# add Sub_metering_3
lines(x=datA$DateTime, 
  y=datA$Sub_metering_3, 
  type="l",
  col="blue")
# add legend
legend("topright", c(names(datA[6:8])), col=c("black", "red", "blue"), lty="solid")
# write plot to graphics device
dev.off()


