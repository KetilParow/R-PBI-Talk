setwd("C:\\Users\\ketil\\Documents\\Visual Studio 2015\\Projects\\R-PBI-Talk")
source(".\\load The Cars.r")
dev.off()
plot.new()

summary(cars)
plot(cars$EngDispl, cars$Co2);
points(dieselcars$EngDispl, dieselcars$Co2, col="green");

plot(cars$Power, cars$Co2);
points(dieselcars$Power, dieselcars$Co2, col = "green");

plot(cars$Weight, cars$Co2);
points(dieselcars$Weight, dieselcars$Co2, col = "green");

cor(dieselcars$Weight, dieselcars$Co2)

cor.test(dieselcars$Power, dieselcars$Co2);
cor.test(dieselcars$EngDispl, dieselcars$Co2);
cor.test(dieselcars$Weight, dieselcars$Co2);

#mfit <- lm(Co2 ~ EngDispl + Power + Weight, dieselcars)
#summary(mfit)

#slide!

qplot(dieselcars$Weight, dieselcars$Co2, geom = 'smooth', method = "auto", xlab = "Weight", ylab = "co2/km")

mfit <- lm(Co2 ~ Weight, dieselcars)
predict(mfit, newdata = data.frame(Weight = c(1600,5000,0)), interval = 'confidence')
