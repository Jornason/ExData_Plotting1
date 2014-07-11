data<-read.table(file.choose(),header=TRUE,sep = ";",na.strings = "?")
data<-data[which(data$Date%in%c("1/2/2007","2/2/2007")),]
hist(data$Global_active_power,col ="#CD3700",
xlab ="Global Active Power(kilowatts)", main="Global Active Power")
png(filename = "plot1.png",width = 480, height = 480)
hist(data$Global_active_power,col ="#CD3700",
xlab ="Global Active Power(kilowatts)", main="Global Active Power")
dev.off()
