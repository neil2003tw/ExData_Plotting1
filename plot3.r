all_date<-read.csv('household_power_consumption.txt',sep=';')
specify_date<-tail(head(all_date,69516),2880)
date_time<-paste(specify_date$Date,specify_date$Time)
date_time<-strptime(date_time,'%d/%m/%Y %H:%M:%S')
Sub_metering_1<-as.numeric(as.character(specify_date$Sub_metering_1))
Sub_metering_2<-as.numeric(as.character(specify_date$Sub_metering_2))
Sub_metering_3<-as.numeric(as.character(specify_date$Sub_metering_3))
plot(date_time,Sub_metering_1,type='l',ylab = 'Energy sub metering')
lines(date_time,Sub_metering_2,col='red')
lines(date_time,Sub_metering_3,col='blue')
legend("topright",c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lty=c(1,1))