# plot4.R

# Read the data set
source("read_data.R")

# Generate the plot
png("plot4.png")
par(mfrow=c(2,2))
plot(data$DateTime,data$Global_active_power,type="n",xlab="",ylab="Global Active Power")
with(data,lines(DateTime,Global_active_power))
plot(data$DateTime,data$Voltage,type="n",xlab="datetime",ylab="Voltage")
with(data,lines(DateTime,Voltage))
plot(data$DateTime,data$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
with(data,lines(DateTime,Sub_metering_1,col="black"))
with(data,lines(DateTime,Sub_metering_2,col="red"))
with(data,lines(DateTime,Sub_metering_3,col="blue"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2",
                           "Sub_metering_3"),
       col=c("black","red","blue"),lty=1)
plot(data$DateTime,data$Global_reactive_power,type="n",xlab="datetime",ylab="Global_reactive_power")
with(data,lines(DateTime,Global_reactive_power))
dev.off()

# Clean up
rm(data)