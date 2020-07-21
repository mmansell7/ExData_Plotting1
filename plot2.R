# plot2.R

# Read the data set
source("read_data.R")

# Generate the plot
png("plot2.png")
plot(data$DateTime,data$Global_active_power,type="n",ylab="Global Active Power (kilowatts)",xlab="")
lines(data$DateTime,data$Global_active_power)
dev.off()

# Clean up
rm(data)

