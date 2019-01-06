# Matrix operations 
# Just add/multiply,divide 1 by another but they have to be of same size

Games
rownames(Games)
colnames(Games)

# Accessing element of matrix
# Rememeber string quotes for variables
Games["LeBronJames","2012"]

FieldGoals
# calculate field goals scored per game

goals_per_game <- round(FieldGoals/Games,1)
goals_per_game

goals_per_game["ChrisPaul","2010"]

MinutesPlayed
round(MinutesPlayed/Games,0)

FieldGoalAttempts
round(FieldGoalAttempts/Games,0)

round(FieldGoals/FieldGoalAttempts,0)
