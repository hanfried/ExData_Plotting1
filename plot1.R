source("get_and_read_household_power_consumption.R")
png("plot1.png",width=480,height=480)
hist(hpc$Global_active_power,
     breaks=12,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     col="red"
)
dev.off()
