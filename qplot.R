# QPlot

setwd("/Users/sylvia/Desktop/R_Data")
stats <- read.csv("P2-Demographic-Data.csv")

library(ggplot2)
?qplot
# Quick plot
qplot(data = stats, x = Internet.users)
qplot(data = stats, x = Income.Group, y = Birth.rate)
qplot(data = stats, x = Income.Group, y = Birth.rate, size=I(5))
# I standing for Is i.e size is 5

qplot(data = stats, x = Income.Group, y = Birth.rate, size=I(5),
      color = I("blue"))
# Create boxplot with qplot

qplot(data = stats, x = Income.Group, y = Birth.rate, geom = "boxplot")

qplot(data = stats, x=Internet.users, y=Birth.rate)
qplot(data = stats, x=Internet.users, y=Birth.rate, size=I(4))
qplot(data = stats, x=Internet.users, y=Birth.rate, size=I(4), colour = "red")
qplot(data = stats, x=Internet.users, y=Birth.rate, size=I(4), colour = Income.Group)



