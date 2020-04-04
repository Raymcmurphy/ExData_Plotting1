#making plot 3
png(file = "plot3.png")
with(ECP, plot(Time, Sub_metering_1, ylab = "Energy sub metering", type="l"))
with(ECP, lines(Time, Sub_metering_2, col = "red"))
with(ECP, lines(Time, Sub_metering_3, col = "blue"))
legend("topright", lty=1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()