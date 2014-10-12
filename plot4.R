## Coursera :: ExploratoryDataAnalysis :: CourseProject1 :: plot4.R
## ======================================================================== 
## (11th October 2014)
## Author: Flic Anderson
##

## AIM:  create plot4.png

# load and subset the data
source("dataOperations.R")

# set up graphics device for plot
png(file="plot4.png")
# set up plot
par(mfrow=c(2, 2))
# @ 1,1 = plot1
plot(
  x=datA$DateTime, 
  xlab="",
  y=datA$Global_active_power, 
  ylab="Global Active Power",
  type="l"
)
# @ 1,2 = plot2
plot(
  x=datA$DateTime, 
  xlab="datetime",
  y=datA$Voltage, 
  ylab="Voltage",
  type="l"
)
# @ 2,1 = plot3
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

# @ 2,2 = plot4
plot(
  x=datA$DateTime, 
  xlab="datetime",
  y=datA$Global_reactive_power, 
  ylab=names(datA[3]),
  type="l"
)
# write plot to graphics device
dev.off()
