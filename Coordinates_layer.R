# Coordinates
# Coordinates layer of Visualization
# Limits, zooming-in, zooming-out

library(ggplot2)

getwd()
setwd("/Users/sylvia/Desktop/R_Data")

stats <- read.csv("P2-Movie-Ratings.csv")

colnames(stats) <- c("Film","Genre","CriticRating","AudienceRating",
                     "Budgetmillion","year")

m <- ggplot(data = stats, aes(x = CriticRating, y = AudienceRating,
       colour = Genre,
       size = Budgetmillion))

m + geom_point()

m + geom_point() +
  xlim(50,100) +
  ylim(50,100)

# Will not work well always because sometimes as below in case of
# histogram data will be cut instead of zoom in we do not want to
# cut data

n <- ggplot(data = stats, aes(x = Budgetmillion))
n + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black") + 
  ylim(0,50)

# instead zoom in, see zoomed version of data falling b/w 0 and 50 on
# y axis

n + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black") + 
  coord_cartesian(ylim = c(0,50))

w <- ggplot(data = stats, aes(x = CriticRating, y = AudienceRating,
                              colour = Genre))

w + geom_point(aes(size = Budgetmillion)) +
  geom_smooth() +
  facet_grid(Genre ~ year) +
  coord_cartesian(ylim = c(0,100))




