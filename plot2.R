data<-read.table(file.choose(),header=TRUE,sep = ";",na.strings = "?")
data<-data[which(data$Date%in%c("1/2/2007","2/2/2007")),]
dateTime <- strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S",tz="GMT")

Sys.setlocale("LC_TIME", "English")
plot(dateTime,data$Global_active_power, type="l",
ylab="Global Active Power(kilowatts)",xlab="")

png(filename = "plot2.png",width = 480, height = 480)
plot(dateTime,data$Global_active_power, type="l",
ylab="Global Active Power(kilowatts)",xlab="")
dev.off()
