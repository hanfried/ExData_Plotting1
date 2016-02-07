dataset_zip_url   <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
dataset_zip_fname <- 'household_power_consumption.zip'
dataset_txt_fname <- 'household_power_consumption.txt'

# Download and unzip dataset if necessary
if (!file.exists(dataset_txt_fname)) {
  if (!file.exists(dataset_zip_fname)) {
    download.file(dataset_zip_url,dataset_zip_fname,method="wget")
  }
  unzip(dataset_zip_fname)
}


# Read the data if necessary,
if (!exists("household_power_consumption")) {
  household_power_consumption <- 
    read.csv(dataset_txt_fname,sep = ";", na.strings = "?", stringsAsFactors=FALSE)
}

# Check the data
dim(household_power_consumption)  # [1] 2075259       9
head(household_power_consumption)

# Subsetting only data from 2007-02-01 to 2007-02-02
# and save this subsetted data to the handy called variable hpc
hpc <- subset(household_power_consumption,Date == '1/2/2007' | Date == '2/2/2007')

dim(hpc)  # [1] 2880    9
head(hpc)

# Converting Date + Time-Strings into a timestamp
library(lubridate)
Sys.setlocale("LC_ALL","en_US.UTF-8")
hpc$Timestamp = dmy_hms(paste(hpc$Date,hpc$Time))
