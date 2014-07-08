Powernew <- read.csv("Power.csv", header = TRUE, sep = ",", dec=".")
Powernew$Date <-as.Date(Powernew$Date, format = "%d-%m-%Y")
Powernew$DateTime <- paste (Powernew$Date, Powernew$Time)
Powernew$day<- weekdays(Powernew$Date)
Powernew$DateTime<-as.POSIXlt(Powernew$DateTime)

plot(Powernew$DateTime,Powernew$Sub_metering_1, type="l", lwd=2,col="black",
     xlab="", ylab="Energy sub metering")
lines(Powernew$DateTime, Powernew$Sub_metering_2, lwd=2, col="red")
lines(Powernew$DateTime, Powernew$Sub_metering_3, lwd=2, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)
