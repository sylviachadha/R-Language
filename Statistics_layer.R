# Statistical Transformations
# Statistics layer
# Aids the eye in seeing patterns in the presence of overplotting
# (many data points)

library(ggplot2)

getwd()
setwd("/Users/sylvia/Desktop/R_Data")

stats <- read.csv("P2-Movie-Ratings.csv")

colnames(stats) <- c("Film","Genre","CriticRating","AudienceRating",
                     "Budgetmillion","year")

?geom_smooth

u <- ggplot(data = stats, aes(x = CriticRating, y = AudienceRating,
                              colour = Genre))
# with 500 points we can't say anything however when we have lines
# on top of it (geom_smooth) then we can discover interesting patterns
u + geom_point() + geom_smooth(fill=NA)

# Histograms, geom_smooth, boxplots are used for statistical analysis 

# Boxplots
u <- ggplot(data = stats,aes(x = Genre, y = AudienceRating,
                                           colour = Genre))
u + geom_boxplot()
u + geom_boxplot(size = 1.2)
u + geom_boxplot(size = 1.2) + geom_point()

# Jitter is a powerful tool when used in combination with boxplot
u + geom_boxplot(size = 1.2) + geom_jitter()

# Another way to visualize
u + geom_jitter() + geom_boxplot(size = 1.2, alpha = 0.5)




