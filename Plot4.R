 par(mfrow=c(2,2) )
 par(mar= c(2,4,2,2))
 #Plot 1
 plot(epc$Time, as.numeric(as.character(epc$Global_active_power)), type="l", xlab="",ylab="Global Active Power (kilowatts)", cex.lab=.7)
 
 #Plot 2
 plot(epc$Time, as.numeric(as.character(epc$Voltage)), xlab="datetime", ylab="Voltage", type="l", cex.lab=.7)
 
 
 #Plot 3
 plot(epc$Time, epc$Sub_metering_3,ylab="Energy sub metering", col="blue", type="l",ylim=c(0,38), xlab="", cex.lab=.7)
 lines(epc$Time, epc$Sub_metering_2, col="red") 
 lines(epc$Time, epc$Sub_metering_1, col="black")
 legend("topright", col = c("black", "red", "blue"), lty= "solid", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=.5)
 
 #Plot 4
 
 plot(epc$Time, as.numeric(as.character(epc$Global_reactive_power)), xlab="datetime", ylab="Global_reactive_power", type="h", cex=.3, cex.lab=.7)
 points(epc$Time, as.numeric(as.character(epc$Global_reactive_power))，, cex=.3 )