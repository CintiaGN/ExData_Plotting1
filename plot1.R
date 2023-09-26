
# GRAPH 1 -----------------------------------------------------------------

library(readr) # Load library


# Data --------------------------------------------------------------------


household_power_consumption <- read_delim("data/household_power_consumption.txt", 
                                          delim = ";", escape_double = FALSE, col_types = cols(Date = col_date(format = "%d/%m/%Y")), 
                                          trim_ws = TRUE)


# Subset ------------------------------------------------------------------

## Load some data
subset2007<-subset(household_power_consumption,Date==as.Date("2007-02-01")|Date==as.Date("2007-02-02"))


# Generate graph ----------------------------------------------------------

png('plot1.png')

### Code for firts graph 

hist(as.numeric(subset2007$Global_active_power),col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)")


### Close conection
dev.off()


