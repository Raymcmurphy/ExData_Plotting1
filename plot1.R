#Getting and preparing data
ECP <- read.csv("household_power_consumption.txt", sep=";")
ECP <- subset(ECP, Date == "1/2/2007" | Date == "2/2/2007")
ECP <- transform(ECP, Time = strptime(paste(ECP$Date, ECP$Time),"%d/%m/%Y %H:%M:%S"))
ECP <- transform(ECP, Global_active_power = as.numeric(as.character(Global_active_power)))
ECP <- transform(ECP, Global_reactive_power = as.numeric(as.character(Global_reactive_power)))
ECP <- transform(ECP, Voltage = as.numeric(as.character(Voltage)))
ECP <- transform(ECP, Global_intensity = as.numeric(as.character(Global_intensity)))
ECP <- transform(ECP, Sub_metering_1 = as.numeric(as.character(Sub_metering_1)))
ECP <- transform(ECP, Sub_metering_2 = as.numeric(as.character(Sub_metering_2)))
ECP <- transform(ECP, Sub_metering_3 = as.numeric(as.character(Sub_metering_3)))

#making plot #1
png(file = "plot1.png")
hist(ECP$Global_active_power,col= "red",main="Global Active Power",xlab="Global Active Power (killowats)")
dev.off()