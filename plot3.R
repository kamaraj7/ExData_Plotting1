##HPC Feb has data filtered for 2/1/2007 and 2/2/2007
dataFile <- "./HPC_Filtered.txt"

# Read the tab delimited filtered file into data set
data <- read.table(dataFile, header=TRUE, sep="\t", stringsAsFactors=FALSE, dec=".")


# Perform data conversions
globalActivePower <- as.numeric(data$Global_active_power)
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%m/%d/%Y %H:%M:%S") 


subMetering1 <- as.numeric(data$Sub_metering_1)
subMetering2 <- as.numeric(data$Sub_metering_2)
subMetering3 <- as.numeric(data$Sub_metering_3)

#Set the graphic device
png("plot3.png", width=480, height=480)

#Plot the graphics

plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

# Write the graph to device
dev.off()

