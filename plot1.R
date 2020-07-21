# plot1.R

# Read the data set
source("read_data.R")

# Generate the plot
png("plot1.png")
hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()

# Clean up
rm(data)

