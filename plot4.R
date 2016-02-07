source("get_and_read_household_power_consumption.R")
png("plot4.png",width=480,height=480)

par(mfcol=c(2,2))

# Plot from Plot 2
plot(x = hpc$Timestamp,
     y = hpc$Global_active_power,
     type = "l",
     xlab = NA,
     ylab = "Global Active Power")

# Plot from Plot 3
plot(x = hpc$Timestamp,
     y = hpc$Sub_metering_1,
     type = "l",
     xlab = NA,
     ylab = "Energy sub metering")
lines(x = hpc$Timestamp,y = hpc$Sub_metering_2,col="red")
lines(x = hpc$Timestamp,y = hpc$Sub_metering_3,col="blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),grep("Sub",colnames(hpc),value=TRUE))

plot(x = hpc$Timestamp,
     y = hpc$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

plot(x = hpc$Timestamp,
     y = hpc$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

dev.off()
