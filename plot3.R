png("plot3.png", width=480, height=480)
with(hpc_feb.df, plot(Datetime, Sub_metering_1, type="n",
                      ylab="Energy sub metering", xlab=""))
with(hpc_feb.df, lines(Datetime, Sub_metering_1, type="S"))
with(hpc_feb.df, lines(Datetime, Sub_metering_2, type="S", col="red"))
with(hpc_feb.df, lines(Datetime, Sub_metering_3, type="S", col="blue"))
with(hpc_feb.df,legend(x="topright",
                c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                col=c("black","red","blue"), lty=1,lwd=1))
dev.off()