# read_data.R

# Read and clean the data set
h <- read.table("household_power_consumption.txt",nrows=1,sep=";",header=TRUE)
data <- read.table("household_power_consumption.txt",skip=66000,nrows=5000,sep=";",
                   header=FALSE,col.names=names(h))
rm(h)
data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
data$DateTime <- strptime(paste(data$Date,data$Time),format="%d/%m/%Y %H:%M:%S")
data <- data[,c(10,1:9)]
