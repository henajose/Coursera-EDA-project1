
  Powernew <- read.csv("Power.csv", header = TRUE, sep = ",", dec=".")
  Powernew$Date <-as.Date(Powernew$Date, format = "%d-%m-%Y")
   Powernew$DateTime <- paste (Powernew$Date, Powernew$Time)
   Powernew$day<- weekdays(Powernew$Date)
   Powernew$DateTime<-as.POSIXlt(Powernew$DateTime)
  
  hist(Powernew$Global_active_power,
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)",
       ylab="Frequency",
       col="red")


