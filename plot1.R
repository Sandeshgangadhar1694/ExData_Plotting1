#Plot 1

household_pwr <- read.csv2("household_power_consumption/household_power_consumption.txt",stringsAsFactors = F,na.strings = "?",header = T,dec = ".")

household_pwr <- household_pwr[household_pwr$Date %in% c("1/2/2007","2/2/2007"),]

#Writing plot to Image
png(filename = "plot1.png",width = 480,height = 480)

hist(household_pwr$Global_active_power,col = "red",main = "Global Active Power",xlab = "Global Active Power(kilowatts)")

dev.off()



