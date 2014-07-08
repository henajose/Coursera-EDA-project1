Powernew <- read.csv("Power.csv", header = TRUE, sep = ",", dec=".")
Powernew$Date <-as.Date(Powernew$Date, format = "%d-%m-%Y")
Powernew$DateTime <- paste (Powernew$Date, Powernew$Time)
Powernew$day<- weekdays(Powernew$Date)
Powernew$DateTime<-as.POSIXlt(Powernew$DateTime) 
par(mfrow=c(2,2))
par(pin =c(2,2))
# 1
plot(Powernew$DateTime, Powernew$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")
# 2
plot(Powernew$DateTime, Powernew$Voltage, type="l",
     xlab="datetime", ylab="Voltage")
# 3
plot(Powernew$DateTime, Powernew$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(Powernew$DateTime, Powernew$Sub_metering_2, col="red")
lines(Powernew$DateTime, Powernew$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       box.lwd=0)
# 4
plot(Powernew$DateTime, Powernew$Global_reactive_power, type="n",
     xlab="datetime", ylab="Global_reactive_power")
lines(Powernew$DateTime, Powernew$Global_reactive_power)