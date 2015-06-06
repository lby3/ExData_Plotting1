plot4<-function()
{
  #load libraries/user defined functions
  library("data.table")
  source("loadData.R")
  
  data<-loadData()

  png(filename="plot4.png", width=480, height=480, units="px")
  
  #set chart layout
  par(mfrow=c(2,2))
  
  #Chart 1
  plot(data$Global_active_power, type="l", xaxt="n", xlab="", ylab="Global Active Power")
  axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
  
  #Chart 2
  plot(data$Voltage, type="l", xaxt="n", xlab="datetime", ylab="Voltage")
  axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
  
  #Chart 3
  plot(data$Sub_metering_1, type="l", xaxt="n", xlab="", ylab="Energy sub metering")
  lines(data$Sub_metering_2, col="red")
  lines(data$Sub_metering_3, col="blue")
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1, bty="n")
  
  #Chart 4
  plot(data$Global_reactive_power, type="l", xaxt="n", xlab="datetime", ylab="Global_reactive_power")
  axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
  
  dev.off()
}