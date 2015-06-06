plot2<-function()
{
  #load libraries/user defined functions
  library("data.table")
  source("loadData.R")
  
  data<-loadData()
  png(filename="plot2.png", width=480, height=480, units="px")
  plot(data$Global_active_power, type="l", xaxt="n", xlab="", ylab="Global Active Power (kilowatts)")
  axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
  dev.off()

}