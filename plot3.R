plot3<-function()
{
  #load libraries/user defined functions
  library("data.table")
  source("loadData.R")
  
  data<-loadData()

  png(filename="plot3.png", width=480, height=480, units="px")
  
  plot(data$Sub_metering_1, type="l", xaxt="n", xlab="", ylab="Energy sub metering")
  lines(data$Sub_metering_2, col="red")
  lines(data$Sub_metering_3, col="blue")
  
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1)
  axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
  
  dev.off()
}