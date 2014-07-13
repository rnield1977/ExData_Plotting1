
plot(epc$Time, epc$Sub_metering_3,ylab="Energy sub metering", col="blue", type="l",ylim=c(0,38), xlab="")

lines(epc$Time, epc$Sub_metering_2, col="red") 
lines(epc$Time, epc$Sub_metering_1, col="black")
legend("topright", col = c("black", "red", "blue"), lty= "solid", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=.5)