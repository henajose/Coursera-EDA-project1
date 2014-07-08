Powernew <- read.csv("Power.csv", header = TRUE, sep = ",", dec=".")
Powernew$Date <-as.Date(Powernew$Date, format = "%d-%m-%Y")
Powernew$DateTime <- paste (Powernew$Date, Powernew$Time)
Powernew$day<- weekdays(Powernew$Date)
Powernew$DateTime<-as.POSIXlt(Powernew$DateTime) 
plot(as.POSIXlt(Powernew$DateTime), Powernew$Global_active_power, type = "l")
plot(Powernew$DateTime, Powernew$Global_active_power, type = "l", xlab="",
     ylab="Global Active Power (kilowatts)")