source("get_and_read_household_power_consumption.R")
png("plot3.png",width=480,height=480)
plot(x = hpc$Timestamp,
     y = hpc$Sub_metering_1,
     type = "l",
     xlab = NA,
     ylab = "Energy sub metering")
lines(x = hpc$Timestamp,y = hpc$Sub_metering_2,col="red")
lines(x = hpc$Timestamp,y = hpc$Sub_metering_3,col="blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),grep("Sub",colnames(hpc),value=TRUE))
dev.off()
