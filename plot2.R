#Plot 2

household_pwr <- read.csv2("household_power_consumption/household_power_consumption.txt",stringsAsFactors = F,na.strings = "?",header = T,dec = ".")

household_pwr <- household_pwr[household_pwr$Date %in% c("1/2/2007","2/2/2007"),]

household_pwr$DateTime <- strptime(paste(household_pwr$Date,household_pwr$Time),"%d/%m/%Y %H:%M:%S")

household_pwr <- household_pwr[,c(-1,-2)]

attach(household_pwr)

#Writing plot to Image
png(filename = "plot2.png",width = 480,height = 480)

plot(DateTime,Global_active_power,ylab = "Global Active Power(kilowatts)",xlab= "",type ="l")

dev.off()
