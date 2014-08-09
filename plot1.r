all_date<-read.csv('household_power_consumption.txt',sep=';')
specify_date<-tail(head(all_date,69516),2880)
Global_active_power<-as.numeric(as.character(specify_date$Global_active_power))
hist(Global_active_power,main='Global Active Power',xlab='Global Active Power(kilowatts)',ylab='Frequency',col='red')