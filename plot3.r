tdata<-'household_power_consumption.txt'
mydata<-read.csv(tdata,header = TRUE,sep = ';')
mydata$Date<-as.Date(mydata$Date,format='%d/%m/%Y')
head(mydata$Date)
mydata1<-subset(mydata,Date%in%as.Date(c("2007-02-01","2007-02-02")))
mydata1$DateTime=as.POSIXct(paste(mydata1$Date,mydata1$Time))
mydata1$Global_active_power<-as.numeric(mydata1$Global_active_power)
DateTime<-mydata1$DateTime

png("plot3.png", width=480, height=480)
plot(x=DateTime,y=mydata1$Sub_metering_1,xlab="",type="l",ylab="Energy sub metering")
lines(x=DateTime,y=mydata1$Sub_metering_2,col="red")
lines(x=DateTime,y=mydata1$Sub_metering_3,col="blue")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2,legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()