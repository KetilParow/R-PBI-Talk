dev.off()
plot.new()

#Back to schooldays

x <- c(-10:10)
y <- x ^ 3 + x ^ 2 + x

plot(x, y, type = 'l', ylab = expression(x ^ 3 + x ^ 2 + x))
lines(x, 50 * x ^ 2 + x - 1000)
lines(x, 100 * x)
