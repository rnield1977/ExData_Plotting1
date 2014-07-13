library(sqldf)
epc_all <- read.csv("household_power_consumption.txt", header=TRUE, sep=";")
epc_all$Date = as.Date(epc_all$Date, format="%d/%m/%Y")

epc <- subset(epc_all,  Date == '2007-02-01' | Date == '2007-02-02')
epc$Sub_metering_1 <- as.numeric(as.character(epc$Sub_metering_1))
epc$Sub_metering_2 <- as.numeric(as.character(epc$Sub_metering_2))
epc$Time <- strptime( paste(epc$Date,epc$Time), format="%Y-%m-%d %H:%M:%S")

epc_backup <- epc

