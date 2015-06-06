plot4<-function()
{
  #load libraries/user defined functions
  library("data.table")
  source("loadData.R")
  
  #Call the common file loading function to load the source data from
  #local directory - the source for the common function is in loadData.R
  data<-loadData()

  #Create the PNG file
  png(filename="plot4.png", width=480, height=480, units="px")
  
  #set chart layout to be 2 by 2, running left to right
  par(mfrow=c(2,2))
  
  #Plot Chart 1, using the same code as for plot2.R
  plot(data$Global_active_power, type="l", xaxt="n", xlab="", ylab="Global Active Power")
  axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
  
  #Plot Chart 2, similar to plot2.R but with an explicit x-axis label
  plot(data$Voltage, type="l", xaxt="n", xlab="datetime", ylab="Voltage")
  axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
  
  #Plot Chart 3, similar to plot3.R but to remove the border for the legenc
  plot(data$Sub_metering_1, type="l", xaxt="n", xlab="", ylab="Energy sub metering")
  lines(data$Sub_metering_2, col="red")
  lines(data$Sub_metering_3, col="blue")
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1, bty="n")
  
  #Plot Chart 4, similar to plot2.R but with an explicit x-axis label
  plot(data$Global_reactive_power, type="l", xaxt="n", xlab="datetime", ylab="Global_reactive_power")
  axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
  
  dev.off()
}