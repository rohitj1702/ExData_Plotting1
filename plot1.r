tdata<-'household_power_consumption.txt'
mydata<-read.csv2(tdata , header = TRUE,sep = ";")
gap<-as.numeric(as.character(mydata$Global_active_power))
hist(gap,xlab = "Global Active Power (in kilowatts)", ylab = 'Frequency',col = 'red',main = 'Global Active Power')
png(filename = 'plot1.png',height = 480,width = 480)
hist(gap,xlab = "Global Active Power (in kilowatts)", ylab = 'Frequency',col = 'red',main = 'Global Active Power')
dev.off()