png("plot4.png", width=480, height=480)

#set up the grid
par(mfrow=c(2,2))

#plot 1
with(hpc_feb.df, plot(Datetime, Global_active_power, type="n",
                      ylab="Global active power", xlab=""))
with(hpc_feb.df, lines(Datetime, Global_active_power, type="S"))

#plot 2
with(hpc_feb.df, plot(Datetime, Voltage, type="n"))
with(hpc_feb.df, lines(Datetime, Voltage, type="S"))

#plot 3
with(hpc_feb.df, plot(Datetime, Sub_metering_1, type="n",
                      ylab="Energy sub metering", xlab=""))
with(hpc_feb.df, lines(Datetime, Sub_metering_1, type="S"))
with(hpc_feb.df, lines(Datetime, Sub_metering_2, type="S", col="red"))
with(hpc_feb.df, lines(Datetime, Sub_metering_3, type="S", col="blue"))
with(hpc_feb.df,legend(x="topright",
                       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                       col=c("black","red","blue"), lty=1,lwd=1))
#plot 4
with(hpc_feb.df, plot(Datetime, Global_reactive_power, type="n"))
with(hpc_feb.df, lines(Datetime, Global_reactive_power, type="S"))


dev.off()