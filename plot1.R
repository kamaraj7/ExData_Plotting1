# HPC Feb has data filtered for 2/1/2007 and 2/2/2007
dataFile <- "./HPC_Filtered.txt"

# Read the tab delimited filtered file into data set
data <- read.table(dataFile, header=TRUE, sep="\t", stringsAsFactors=FALSE, dec=".")

# Perform data conversions
globalActivePower <- as.numeric(data$Global_active_power)

#Set the graphic device
png("plot1.png", width=480, height=480)

#Plot the graphics
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# Write the graph to device
dev.off()