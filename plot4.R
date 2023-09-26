
# GRAPH 4 -----------------------------------------------------------------

library(readr) # Load library


# Data --------------------------------------------------------------------

## Load some data
household_power_consumption <- read_delim("data/household_power_consumption.txt", 
                                          delim = ";", escape_double = FALSE, col_types = cols(Date = col_date(format = "%d/%m/%Y")), 
                                          trim_ws = TRUE)


# Subset ------------------------------------------------------------------

subset2007<-subset(household_power_consumption,Date==as.Date("2007-02-01")|Date==as.Date("2007-02-02"))


# Generate graph ----------------------------------------------------------


###  Graph 4 
png('plot4.png')

par(mfrow=c(2,2))


plot(subset2007$Global_active_power, type = "l",xlab="",ylab = "Global Active Power (kilowatts)")
plot(subset2007$Voltage, type = "l",ylab = "Voltage", xlab="datetime")
# falta grafica de colores 

with(subset2007,plot(Sub_metering_1, type="l",xlab="datetime",ylab="Energy sub metering"))
with(subset2007,points(Sub_metering_2, type="l",col="red"))
with(subset2007,points(Sub_metering_3, type="l",col="blue"))



plot(subset2007$Global_reactive_power, type="l", ylab="Global Reactive Power", xlab= "datetime")

### Close conection
dev.off()
