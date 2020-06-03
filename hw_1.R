data = read.csv("household_power_consumption.txt",sep=';')

head(data)

dim(data)

summary(data)

data



strptime(data$Time,format = "%H:%M:%S")

as.Date(data$Date,format = "%d/%m/%Y")

data$newdatetime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")



subdata <- subset(data,newdatetime >= "2007-02-01" & newdatetime <= "2007-02-02")

subdata$Global_active_power2 <- as.numeric(subdata$Global_active_power)

hist(subdata$Global_active_power2)

plot(subdata$newdatetime,subdata$Global_active_power,type = "l")

with(subdata,{

plot(subdata$newdatetime,subdata$Sub_metering_1,type = "l")

plot(subdata$newdatetime,subdata$Sub_metering_2,type = "l")

plot(subdata$newdatetime,subdata$Sub_metering_3,type = "l")

              })


plot(subdata$newdatetime,subdata$Sub_metering_1,type = "n")

points(subdata$newdatetime,subdata$Sub_metering_1,type = "l")

points(subdata$newdatetime,subdata$Sub_metering_2,type = "l",col = "blue")

points(subdata$newdatetime,subdata$Sub_metering_3,type = "l")
