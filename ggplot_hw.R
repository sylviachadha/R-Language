# ggplot_homework

library(ggplot2)
getwd()
setwd("/Users/sylvia/Desktop/R_data")
stats <- read.csv("Section6-Homework-Data.csv")

# Data Exploration
head(stats)
summary(stats)
str(stats)

# activate ggplot2
library(ggplot2)

# Day of week is categorical variable so we do not need a histogram
# which is for continuous values but a barchart for frequency and this
# has only x axis as y axis automatically comes to be count

ggplot(data = stats, aes(x = Day.of.Week)) + geom_bar()

# We observe 2 things from this chart
# most movies released on Friday and there is no Monday in this that
# means not even 1 movie released on monday

# Filter the dataframe for Genre and Studio
filt1 <- (stats$Genre == "action") | 
  (stats$Genre == "adventure") | 
  (stats$Genre =="animation") | 
  (stats$Genre =="comedy")|
  (stats$Genre =="drama")
select_row <- stats[filt1, ]

select_row

filt2 <- (stats$Studio == "Buena Vista Studios") |
  (stats$Studio == "Fox") |
  (stats$Studio == "Paramount Pictures") |
  (stats$Studio == "Sony") |
  (stats$Studio == "Universal") |
  (stats$Studio == "WB")

select_r <- stats[filt2, ]
head(select_r)

# Another method to apply filter
# %in% and then supply a vector which means it will return true if
# value is in either of this vector

filt2 <- stats$Studio %in% c("Buena Vista Studios", "Fox", "Paramount Pictures",
                             "Sony", "Universal", "WB")
select_r <- stats[filt2, ]
head(select_r)

# All rows which have filters1 and 2
stats2 <- stats[filt1 & filt2, ]
head(stats2)

# Prepare plot's data and aes layer
# in base layer only include things that are going to stay constant like
# Genre on x-axis and Gross % US
p <- ggplot(data = stats2, aes(x = Genre, y = Gross...US))
# We won't get anything plotting this as we do not have a geometry
p

# Add geometry
q <- p + 
# size and colour are only applicable to jitter layer so we add these
# aesthetics here
# use aes if mapping and no aes if setting then just hard code
  geom_jitter(aes(size = Budget...mill., colour = Studio)) +
  geom_boxplot(alpha = 0.7, outlier.colour = NA) 

# non data ink
q <- q + 
  xlab("Genre") +
  ylab("Gross % US") +
  ggtitle("Domestic Gross % by Genre")
q

# Theme layer
q <- q +
  theme(
    axis.title.x = element_text(colour = "Blue", size = 30),
    axis.title.y = element_text(colour = "Blue", size = 30),
    axis.text.x = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    
    plot.title = element_text(size = 40),
    
    legend.title = element_text(size = 20),
    legend.text = element_text(size = 20),
     
    text = element_text(family = "Comic Sans MS")
  )
  
# Change name of label
q$labels$size <- "Budget $M"
q



















