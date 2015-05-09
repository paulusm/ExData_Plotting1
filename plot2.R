#png("plot1.png", width=480, height=480)
with(hpc_feb.df, plot(Datetime, Global_active_power, type="n",
                      ylab="Global active power (kilowatts)", main="Global active power"))
with(hpc_feb.df, lines(Datetime, Global_active_power, type="S"))
#dev.off()