# Visualizing with qplot

library(ggplot2)

setwd("/Users/sylvia/Desktop/R_Data")
stats <- read.csv("P2-Demographic-Data.csv")

merged_df <- merge(stats,mydf,by.x = "Country.Code", by.y = "Code")

qplot(data = merged_df, x = Internet.users, y = Birth.rate)

qplot(data = merged_df, x = Internet.users, y = Birth.rate,
      colour=Regions)

# Shapes
qplot(data = merged_df, x = Internet.users, y = Birth.rate,
      colour=Regions, size = I(4), shape = I(23))

# Transparency

qplot(data = merged_df, x = Internet.users, y = Birth.rate,
      colour=Regions, size = I(4), shape = I(19),
      alpha = I(0.6))

# Title

qplot(data = merged_df, x = Internet.users, y = Birth.rate,
      colour=Regions, size = I(4), shape = I(19),
      alpha = I(0.6),
      main = "Birth rate vs Internet Users")




      
