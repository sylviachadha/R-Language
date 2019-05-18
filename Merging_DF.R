# Merging Data Frames

setwd("/Users/sylvia/Desktop/R_Data")
stats <- read.csv("P2-Demographic-Data.csv")

head(stats)
head(mydf)

# Now we want to visualize Internet users and Birth rate as per
# Regions so we need to combine 2 data frame as these fields are 
# present in different data frames

merged_df <- merge(stats,mydf,by.x = "Country.Code", by.y = "Code")
head(merged_df)

merged_df$Country <- NULL

str(merged_df)
tail(merged_df)


