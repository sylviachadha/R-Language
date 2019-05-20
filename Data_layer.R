# Data Layer
# Factor

library(ggplot2)

getwd()
setwd("/Users/sylvia/Desktop/R_Data")
data <- read.csv("P2-Movie-Ratings.csv")
head(data)
colnames(data)
colnames(data) <- c("Film","Genre","CriticRating","AudienceRating",
                    "BudgetMillions","Year")

head(data)
tail(data)
str(data)

# A factor in R is basically a categorical variable its a way R works with
# categorical variables
# r looks through your columns find out all different words and assigns each
# word a number for eg for horror, comedy, action etc in genre levels for us
# its easier to understand words n for computers its easier to understand
# numbers so R just stores it this way
# What levels exist in a factor

summary(data)

# We see R is treating year as a numeric variable however we wont ne doing
# any operations like add etc with year n we want year to be a categorical
# variable so we can group by year, colour things by year.

# Convert non numeric factor variable into a factor variable
# When R sees words it chooses to recognise them as factors and when it sees
# numbers it thinks its going to be using it as numeric howevever sometimes
# we do not want it that way like here we want year to be factor rather than
# numerical

# check how it behaves as a factor
factor(data$Year)
# Now assign it as a factor
data$Year <- factor(data$Year)
# Now since this column has been assigned as a factor u can check levels
levels (data$Year)

summary(data)
str(data)

# It's important at the very start to set your variable exactly what u want it  
# to be, a categorical variable or u want it to be a numeric variable etc







