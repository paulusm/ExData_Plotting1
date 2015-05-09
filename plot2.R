# import the data
hpc.df <- read.table("data/household_power_consumption.txt", sep=";", header=TRUE,
                     colClasses=c("character", "character", rep("numeric", 7)), na.strings=c("?"))

# Convert date and time columns
hpc.df$Date <- as.Date(hpc.df$Date, format="%d/%m/%Y")
hpc.df$Time <- strptime(hpc.df$Time, format="%H:%M:%S")


# Get the days of interest into a subset data frame
hpc_feb.df <- hpc.df[hpc.df$Date == '2007-02-01' | hpc.df$Date == '2007-02-02',]

# Add a date + time column
hpc_feb.df$Datetime <- paste(hpc_feb.df$Date, strftime(hpc_feb.df$Time, format="%H:%M:%S"))
hpc_feb.df$Datetime <- strptime(hpc_feb.df$Datetime, format="%Y-%m-%d %H:%M:%S")

# Create graph
png("plot2.png", width=480, height=480)
with(hpc_feb.df, plot(Datetime, Global_active_power, type="n",
                      ylab="Global active power (kilowatts)", main="Global active power"))
with(hpc_feb.df, lines(Datetime, Global_active_power, type="S"))
dev.off()