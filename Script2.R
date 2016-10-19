setwd("C:\\Users\\ketil\\Documents\\Visual Studio 2015\\Projects\\R-PBI-Talk")
source(".\\demostuff.r")
dev.off()
plot.new()
 
a <- seq(0, 2 * pi, pi / 32)
x <- cos(a)
y <- sin(a);

plot(x, y);
plot(x, y, type = "l", ann = FALSE);
plot(x, y, type = "l", axes = FALSE, asp = 1, xlab="", ylab = "", col = 'darkblue', main = hudsucker1);
plot(x, y, type = "l", asp = 1, xlab = hudsucker2, ylab = "", col = 'darkblue', main = hudsucker1);
abline(h = 0, v = 0, col = 'gray')

