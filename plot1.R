plot1<-function()
{
  #load libraries/user defined functions
  library("data.table")
  source("loadData.R")
  
  #Call the common file loading function to load the source data from
  #local directory - the source for the common function is in loadData.R
  data<-loadData()
  
  #Create the PNG file
  png(filename="plot1.png", width=480, height=480, units="px")
  
  #call the plotting function, setting title, x-axis label and changing the color to red
  hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
  
  #save the PNG
  dev.off()
}