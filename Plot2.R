#Plot 2
data = read.csv("household_power_consumption.txt",sep=';')

data$newdatetime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

subdata <- subset(data,newdatetime >= "2007-02-01" & newdatetime < "2007-02-03")

subdata$Global_active_power2 <- as.numeric(subdata$Global_active_power)

plot(subdata$newdatetime,subdata$Global_active_power,type = "l",ylab = "Global Active Power (kilowatts)",xlab = "")


