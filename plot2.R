source("get_and_read_household_power_consumption.R")
png("plot2.png",width=480,height=480)
library(lubridate)
Sys.setlocale("LC_ALL","en_US.UTF-8")
hpc$timestamps = dmy_hms(paste(hpc$Date,hpc$Time))
plot(x = hpc$timestamps,
     y = hpc$Global_active_power,
     type = "l",
     xlab = NA,
     ylab = "Global Active Power (kilowatts)")
dev.off()
