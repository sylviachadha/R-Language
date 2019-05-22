# Overriding Aesthetics

library(ggplot2)

getwd()
setwd("/Users/sylvia/Desktop/R_Data")

stats <- read.csv("P2-Movie-Ratings.csv")

# colnames is a function to rename columns
colnames(stats) <- c("Film","Genre","CriticRating","AudienceRating",
                     "Budgetmillion","year")

# Create object-base layer

q <- ggplot(data = stats, aes(x = CriticRating, y = AudienceRating,
                              colour = Genre, size = Budgetmillion))

# add geom layer
# the geometry that v r using geom_point its inhereting aesthetics
# from this object q
q + geom_point()

# Overriding aesthetics using some other aesthetics instead of what is
# mentioned in base layer
# eg 1
q + geom_point(aes(size = CriticRating))

# eg 2
q + geom_point(aes(colour = Budgetmillion))

# q remains same we are not changing the object itself
q + geom_point()

# eg 3
# mapping variables to aesthetics
q + geom_point(aes(x = Budgetmillion)) +
  xlab("Budget Millions")
# Even though we have overridden aesthetics it still keeps the old
# name so we need to add label also when we override aesthetics

# eg 4
q + geom_line() + geom_point()
# reduce line size
# Setting aesthetics
q + geom_line(size = 1) + geom_point()

# Mapping vs setting aesthetics




