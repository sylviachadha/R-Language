# Filtering data frames 

setwd("/Users/sylvia/Desktop/R_Data")
stats <- read.csv("P2-Demographic-Data.csv")

# Instead of extracting whole column or row extract based
# on some conditions or filters

head(stats)
filter <- stats$Internet.users < 2
# This will return a vector of T/F
filter
# To view only T rows
stats[filter,]

# To filter rows where birth rate 40
stats[stats$Birth.rate > 40, ]

# to filter rows Internet users < 2 and Birth rate > 40
stats[stats$Birth.rate > 40 & stats$Internet.users < 2, ]

# All rows having high income
stats[stats$Income.Group == "High income", ]
levels(stats$Income.Group)

# All information for country Malta
stats[stats$Country.Name == "Malta", ]



