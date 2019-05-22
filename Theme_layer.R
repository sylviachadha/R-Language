# Theme layering of visualizations
# Involves all non data ink on our chart
# Change formatting of text, colours , legend / label position etc

library(ggplot2)

getwd()
setwd("/Users/sylvia/Desktop/R_Data")

stats <- read.csv("P2-Movie-Ratings.csv")

colnames(stats) <- c("Film","Genre","CriticRating","AudienceRating",
                     "Budgetmillion","year")

o <- ggplot(data = stats, aes(x = Budgetmillion))
h <- o + geom_histogram(binwidth = 10,aes(fill = Genre) , colour = "Black")
h

# Add axis label

h +
  xlab("Money Axis") +
  ylab("Number of Movies") 

# Label formatting

h +
  xlab("Money Axis") +
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour = "DarkGreen", size = 30),
        axis.title.y = element_text(colour = "Red", size = 30))

# Tick mark formatting

h +
  xlab("Money Axis") +
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour = "DarkGreen", size = 30),
        axis.title.y = element_text(colour = "Red", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20))

# Legend Formatting

h +
  xlab("Money Axis") +
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour = "DarkGreen", size = 30),
        axis.title.y = element_text(colour = "Red", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1))

# Title of plot

h +
  xlab("Money Axis") +
  ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") +
  theme(axis.title.x = element_text(colour = "DarkGreen", size = 30),
        axis.title.y = element_text(colour = "Red", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        
        plot.title = element_text(colour = "DarkBlue",
                                  size = 40,
                                  family = "Courier"))




