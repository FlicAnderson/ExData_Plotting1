## Coursera :: ExploratoryDataAnalysis :: CourseProject1 :: dataSizeCalc.R
## ======================================================================== 
## (11th October 2014)
## Author: Flic Anderson
##

## AIM:  calculate the space the dataset will require to load into memory.

# number of observations
nObs <- 2075259
# number of columns
nCols <- 9
# number of cells
nCells <- nObs*nCols

# assume 8 bytes per cell + 40 bytes per column

# number of bytes:
bytes <- (nCells*8)+(40*9)

Kb <- bytes/1024
Mb <- Kb/1024
Mb <- round(Mb, digits=0)
#Gb <- Mb/1024

cushionFactor <- 3

print(paste0("... dataset is ", Mb, "Mb (megabytes) but requires 3 times this amount - ", Mb*cushionFactor, "Mb - to operate comfortably"))

