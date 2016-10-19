setwd("C:\\Users\\ketil\\Documents\\Visual Studio 2015\\Projects\\R&PBITalk")
source(".\\ShittyMovieMountain.r")
dev.off()
plot.new()

#Volcano is a matrix...
x <- 10 * (1:nrow(volcano));
y <- 10 * (1:ncol(volcano));
image(x, y, volcano, col = terrain.colors(100), axes = FALSE, xlab = "", ylab = "", asp = 1, main = mountain, sub="...or is it Mount Doom?")
contour(x, y, volcano, levels = seq(90, 200, by = 5), add = TRUE, col = "darkgrey", axes = FALSE)

# plot(c(1958, 1978, 1998, 2018, 2038), seq(5,100, by= (95/4)),xlab="year",ylab="% obesity")
