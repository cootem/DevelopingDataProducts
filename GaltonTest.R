#### Galton Test ####
#
#
# Michaael Coote
# January 27, 2019

library(UsingR)
data(galton)

summary(galton)
describe(galton)
fit <- lm(data = galton, child ~ parent)
summary(fit)
pH <- 70
cH <- predict(fit, newdata = data.frame(parent = pH))
plot(fit)

plot(galton$parent,galton$child,pch=19,col="blue")
lines(galton$parent,fit$fitted,col="red",lwd=3)
points(cH, pH, pch = 23, col = "green", lwd = 5)


plot(child ~ parent, data = galton, pch = 19, col = "gray", xlim = c(60,80))
abline(fit, col = "red", lwd = 3)
points(pH, cH, pch = 19, col = "blue", lwd = 5, cex = 5)


ggplot(data = galton, aes(parent, child)) +
        geom_point()
ggplot(data = fit) +
        geom_line()

