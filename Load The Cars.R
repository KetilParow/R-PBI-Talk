setwd("C:\\Users\\ketil\\Documents\\Visual Studio 2015\\Projects\\R-PBI-Talk");
cars <- read.csv(".\\data\\personbiler.csv", sep = ";");
cars$Make <- toupper(cars$Make)
cars$Fuel <- toupper(cars$Fuel)
dieselcars <- subset(cars, Fuel == 'DIESEL')
petrolcars <- subset(cars, Fuel == 'PETROL')

library(ggplot2)
