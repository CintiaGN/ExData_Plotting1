
# GRAPH 2 -----------------------------------------------------------------



library(readr) # Load library


# Data --------------------------------------------------------------------


household_power_consumption <- read_delim("data/household_power_consumption.txt", 
                                          delim = ";", escape_double = FALSE, col_types = cols(Date = col_date(format = "%d/%m/%Y")), 
                                          trim_ws = TRUE)


# Subset ------------------------------------------------------------------

## Load some data
subset2007<-subset(household_power_consumption,Date==as.Date("2007-02-01")|Date==as.Date("2007-02-02"))


# Generate graph ----------------------------------------------------------

png('plot2.png')

plot(subset2007$Global_active_power, type = "l",xlab="",ylab = "Global Active Power (kilowatts)")

axis(1,                                                   
     subset2007$Date,
     format(subset2007$Date, "%dd"))

### Close conection
dev.off()
