tdata<-'household_power_consumption.txt'
mydata<-read.csv(tdata,header = TRUE,sep = ';')
mydata$Date<-as.Date(mydata$Date,format='%d/%m/%Y')
head(mydata$Date)
mydata1<-subset(mydata,Date%in%as.Date(c("2007-02-01","2007-02-02")))
mydata1$DateTime=as.POSIXct(paste(mydata1$Date,mydata1$Time))
mydata1$Global_active_power<-as.numeric(mydata1$Global_active_power)
DateTime<-mydata1$DateTime

png("plot2.png", width=480, height=480)
plot(x=DateTime,y=mydata1$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
