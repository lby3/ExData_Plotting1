loadData<-function()
{
  library("data.table")
  
  #load data
  classes<-c(rep("character", 2), rep("numeric",7))
  
  data<-fread("C:/Coursera/R_Programming/Data Folders/exdata-data-household_power_consumption/household_power_consumption.txt", colClasses=classes)
  
  data$Date<-as.Date(data$Date,"%d/%m/%Y")

  #subset out based on dates
  data<-data[data$Date>="2007/02/01" & data$Date<="2007/02/02",]
  
  data$Ptime<-paste(data$Date,data$Time)
  data$Ptime<-lapply(data$Ptime, strptime, "%Y-%m-%d %H:%M:%S")
  #data$Date<-as.Date(data$Date, "%d/%m/%Y %H:%M:%S")  
  #data$Time<-strptime(data$Time,"%H:%M:%S")
  
  data$Global_active_power<-as.numeric(data$Global_active_power)
  data$Global_reactive_power<-as.numeric(data$Global_reactive_power)
  data$Voltage<-as.numeric(data$Voltage)
  data$Global_intensity<-as.numeric(data$Global_intensity)
  data$Sub_metering_1<-as.numeric(data$Sub_metering_1)
  data$Sub_metering_2<-as.numeric(data$Sub_metering_2)
  
  data
  
  #data<-data[data$Date>="2007/02/01" & data$Date<="2007/02/02"]
}
  
  