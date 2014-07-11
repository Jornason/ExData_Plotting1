data<-read.table(file.choose(),header=TRUE,sep = ";",na.strings = "?")
data<-data[which(data$Date%in%c("1/2/2007","2/2/2007")),]
dateTime <- strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S",tz="GMT")

Sys.setlocale("LC_TIME", "English")
plot(dateTime,data$Sub_metering_1,type="l",
ylab="Energy Sub Metering",xlab="")
lines(dateTime,data$Sub_metering_2,col=2)
lines(dateTime,data$Sub_metering_3,col=4)
legend("topright", col = c(1,2,4), lty= "solid", inset = .05,
 legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

png(filename = "plot3.png",width = 480, height = 480)
plot(dateTime,data$Sub_metering_1,type="l",
ylab="Energy Sub Metering",xlab="")
lines(dateTime,data$Sub_metering_2,col=2)
lines(dateTime,data$Sub_metering_3,col=4)
legend("topright", col = c(1,2,4), lty= "solid", inset = .05,
 legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
