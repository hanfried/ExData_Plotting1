source("get_and_read_household_power_consumption.R")
png("plot2.png",width=480,height=480)
plot(x = hpc$Timestamp,
     y = hpc$Global_active_power,
     type = "l",
     xlab = NA,
     ylab = "Global Active Power (kilowatts)")
dev.off()
