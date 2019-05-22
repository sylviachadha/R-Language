# Facets
# Facets layering of this visualization process

library(ggplot2)

getwd()
setwd("/Users/sylvia/Desktop/R_Data")

stats <- read.csv("P2-Movie-Ratings.csv")

colnames(stats) <- c("Film","Genre","CriticRating","AudienceRating",
                     "Budgetmillion","year")

v <- ggplot(data = stats, aes(x = Budgetmillion))
v + geom_histogram(binwidth = 10,aes(fill = Genre),
                   colour = "Black")

# Not easy to visualize so we make histogram for each of these Genre
# using facets

# Facets

v + geom_histogram(binwidth = 10,aes(fill = Genre),
                   colour = "Black") +
  facet_grid(Genre ~ ., scales = "free")

# On left Genre represents rows and on right . is columns here in
# columns u just want 1 column. Scales = free so histogram is
# clearly visible so each row can have its own scale according to
# its range of data points

# Scatterplots
w <- ggplot(data = stats, aes(x = CriticRating, y = AudienceRating,
                              colour = Genre))
w + geom_point(size = 3)

# Fascinating facets
w + geom_point(size = 3) +
  facet_grid(Genre ~ .)

w + geom_point(size = 3) +
  facet_grid(. ~ year)

w + geom_point(size = 3) +
  facet_grid(Genre ~ year)

# Setting size
w + geom_point(size = 3) +
  geom_smooth() +
  facet_grid(Genre ~ year)

# Mapping size
w + geom_point(aes(size = Budgetmillion)) +
  geom_smooth() +
  facet_grid(Genre ~ year)












