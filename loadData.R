loadData<-function()
{
  library("data.table")
  
  #load data
  #Note that this is drawing from the unzipped file my *LOCAL* directory 
  data<-fread("C:/Coursera/R_Programming/Data Folders/exdata-data-household_power_consumption/household_power_consumption.txt")

  #Coerce the date field to date so that subsetting is easier
  data$Date<-as.Date(data$Date,"%d/%m/%Y")

  #subset out based on dates
  data<-data[data$Date>="2007/02/01" & data$Date<="2007/02/02",]

  #convert the incorrectly coerced columns into numeric
  data$Global_active_power<-as.numeric(data$Global_active_power)
  data$Global_reactive_power<-as.numeric(data$Global_reactive_power)
  data$Voltage<-as.numeric(data$Voltage)
  data$Global_intensity<-as.numeric(data$Global_intensity)
  data$Sub_metering_1<-as.numeric(data$Sub_metering_1)
  data$Sub_metering_2<-as.numeric(data$Sub_metering_2)
  
  data
  
}
  
  