#### Galton Test ####
#
#
# Michaael Coote
# January 27, 2019

library(UsingR)
data("galton")

fit <- lm(data = galton, child ~ parent)
summary(fit)
predict(fit, newdata = data.frame(parent = 77))
