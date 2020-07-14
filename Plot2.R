tdata<-'household_power_consumption.txt'
mydata<-read.csv2(tdata , header = TRUE,sep = ";")
plot(mydata$Global_active_power, type="l", ylab="Global Active Power (Kilowatts)", xlab="Day",axes=F)

png("Plot2.png",width=480, height=480)
plot(mydata$Global_active_power, type="l", ylab="Global Active Power (Kilowatts)", xlab="Day",axes=F)

dev.off()