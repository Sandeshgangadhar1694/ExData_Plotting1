#Plot 4

household_pwr <- read.csv2("household_power_consumption/household_power_consumption.txt",stringsAsFactors = F,na.strings = "?",header = T,dec = ".")

household_pwr <- household_pwr[household_pwr$Date %in% c("1/2/2007","2/2/2007"),]

household_pwr$DateTime <- strptime(paste(household_pwr$Date,household_pwr$Time),"%d/%m/%Y %H:%M:%S")

household_pwr <- household_pwr[,c(-1,-2)]

attach(household_pwr)


#Writing plot to Image
png(filename = "plot4.png",width = 480,height = 480)

par(mfrow = c(2,2))

plot(DateTime,Global_active_power,ylab = "Global Active Power",xlab= "",type ="l")

plot(DateTime,Voltage,ylab = "Voltage",xlab = "datetime",type = "l")

plot(DateTime,Sub_metering_1,type ="l",ylab = "Energy sub metering",xlab = "")
lines(DateTime,Sub_metering_2,type ="l",col = "red")
lines(DateTime,Sub_metering_3,type = "l",col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

plot(DateTime,Global_reactive_power,ylab = "Global_reactive_power",xlab= "datetime",type ="l")

dev.off()
