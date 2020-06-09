
#Plot 3
data = read.csv("household_power_consumption.txt",sep=';')

data$newdatetime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

subdata <- subset(data,newdatetime >= "2007-02-01" & newdatetime < "2007-02-03")

subdata$Global_active_power2 <- as.numeric(subdata$Global_active_power)



plot(subdata$newdatetime,subdata$Sub_metering_1,type = "n",ylab = "Energy Sub Metering",xlab = "")

points(subdata$newdatetime,subdata$Sub_metering_1,type = "l",col="black")

points(subdata$newdatetime,subdata$Sub_metering_2,type = "l",col = "red")

points(subdata$newdatetime,subdata$Sub_metering_3,type = "l",col = "blue")

legend("topright",pch = "-", col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
