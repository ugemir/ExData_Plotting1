data = read.csv("household_power_consumption.txt",sep=';')

head(data)

dim(data)

summary(data)

data



strptime(data$Time,format = "%H:%M:%S")

as.Date(data$Date,format = "%d/%m/%Y")

data$newdatetime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")



subdata <- subset(data,newdatetime >= "2007-02-01" & newdatetime <= "2007-02-02")

subdata