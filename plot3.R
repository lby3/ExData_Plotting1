plot3<-function()
{
  #load libraries/user defined functions
  library("data.table")
  source("loadData.R")

  #Call the common file loading function to load the source data from
  #local directory - the source for the common function is in loadData.R
  data<-loadData()

  #Create the PNG file
  png(filename="plot3.png", width=480, height=480, units="px")
  
  #Create a line chart for subMetering1, no x-axis or x-label, but setting the y-axis
  plot(data$Sub_metering_1, type="l", xaxt="n", xlab="", ylab="Energy sub metering")
  
  #Overlay with subMetering2 line, coloured red
  lines(data$Sub_metering_2, col="red")
  
  #Overlay with subMetering3 line, coloured blue
  lines(data$Sub_metering_3, col="blue")
  
  #Insert a legend at the top right with the appropriate line colours for the three lines
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1)
  
  #Create the x-axis with three tick marks at first, middle and last observations
  axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
  
  #Save the PNG File
  dev.off()
}