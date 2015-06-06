plot2<-function()
{
  #load libraries/user defined functions
  library("data.table")
  source("loadData.R")
  
  #Call the common file loading function to load the source data from
  #local directory - the source for the common function is in loadData.R
  data<-loadData()
  
  #Create the png file
  png(filename="plot2.png", width=480, height=480, units="px")
  
  #Plot the line chart, setting the y-axis label but not showing x-axis or x-axis label
  plot(data$Global_active_power, type="l", xaxt="n", xlab="", ylab="Global Active Power (kilowatts)")
  
  #Create a separate x-axis with three tick marks at first, middle and last observation
  axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
  
  #save the file
  dev.off()
}