#making plot2
png(file = "plot2.png")
with(ECP, plot(Time, Global_active_power, ylab = "Global Active Power (killowats)", type="l"))
dev.off()