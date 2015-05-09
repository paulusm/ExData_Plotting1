png("plot1.png", width=480, height=480)
with(hpc_feb.df, hist(Global_active_power, col="red", 
                      xlab="Global active power (kilowatts)", main="Global active power"))
dev.off()