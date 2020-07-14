Plot1<-fread("household_power_consumption.csv")
#Use library(data.table)

str(Plot1)

png("Plot1.png", width=480, height=480)
hist(Plot1$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (Kilowatts)")
dev.off();