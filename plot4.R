data<-read.table(file.choose(),header=TRUE,sep = ";",na.strings = "?")
data<-data[which(data$Date%in%c("1/2/2007","2/2/2007")),]
dateTime <- strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S",tz="GMT")

par(mfrow=c(2,2))
Sys.setlocale("LC_TIME", "English")

plot(dateTime,data$Global_active_power, type="l",
ylab="Global Active Power",xlab="")

plot(dateTime,data$Voltage, type="l",
ylab="Voltage",xlab="datetime")

plot(dateTime,data$Sub_metering_1,type="l",
ylab="Energy Sub Metering",xlab="")
lines(dateTime,data$Sub_metering_2,col=2)
lines(dateTime,data$Sub_metering_3,col=4)
legend("topright", col = c(1,2,4), lty= "solid", inset = .05, bty="n",cex=0.7,
 legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(dateTime,data$Global_reactive_power, type="l",
ylab="Global_reactive_power",xlab="datetime")



png(filename = "plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))
plot(dateTime,data$Global_active_power, type="l",
ylab="Global Active Power",xlab="")

plot(dateTime,data$Voltage, type="l",
ylab="Voltage",xlab="datetime")

plot(dateTime,data$Sub_metering_1,type="l",
ylab="Energy Sub Metering",xlab="")
lines(dateTime,data$Sub_metering_2,col=2)
lines(dateTime,data$Sub_metering_3,col=4)
legend("topright", col = c(1,2,4), lty= "solid", inset = .05, bty="n",cex=0.8,
 legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(dateTime,data$Global_reactive_power, type="l",
ylab="Global_reactive_power",xlab="datetime")
dev.off()

par(mfrow=c(1,1))
