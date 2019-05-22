# Starting layer tips

library(ggplot2)

getwd()
setwd("/Users/sylvia/Desktop/R_Data")

stats <- read.csv("P2-Movie-Ratings.csv")

colnames(stats) <- c("Film","Genre","CriticRating","AudienceRating",
                     "Budgetmillion","year")

# Adding aesthetics in base layer
t <- ggplot(data = stats, aes(x = AudienceRating)) 

t + geom_histogram(binwidth = 10,
                   fill = "White", colour = "Blue")
# we r not connecting colour to a variable we r connecting it to a
# value so we setting here n not mapping

# Another way .. adding aesthetics inside geometry adds flexibility
# as can change x whenever needed without touching object t
t <- ggplot(data = stats)
t + geom_histogram(binwidth = 10,
                   aes(x = AudienceRating),
                   fill = "White", colour = "Blue")

t + geom_histogram(binwidth = 10,
                   aes(x = CriticRating),
                   fill = "White", colour = "Blue")
            
# Point chart, line chart, bar chart
# Normal distribution and uniform distribution

# Skeleton plot
# When u want to create a plot but u want to use different datasets
# on that plot
# This does not even have dataset and data can be put inside 
# layers that are added to this skeleton plot
t <- ggplot()








