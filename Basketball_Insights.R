# Analyse NBA Data

my_plot <- function(input_data, no_of_players = 1:10){
  Data <- input_data[no_of_players,,drop=F]
  matplot(t(Data),type = "b", pch = 15:18, col = c(1:4,6))
  
  legend("bottomleft", inset=0.01, legend=Players[no_of_players],pch = 15:18, col = c(1:4,6))
}

my_plot(Games)

# Salary
# How Salaries changed over years
my_plot(Salary)
# How much they get paid per game
# Observe that Krobe & Derrick have so high salaty compared
# to others cz they got injured n did not play that many games
# Salary is not effected by injuries but games/fieldgoals are
# so not a good idea to view these together
my_plot(Salary/Games)
my_plot(Salary/FieldGoals)

# In-Game Metrics
my_plot(MinutesPlayed)
my_plot(Points)

# In-Game Metrics Normalized
# Now here even if person is injured his fieldgoals consistent
# with only the games he played 
my_plot(FieldGoals/Games)
# Out of all goals he attempts nearly 60% r success for Dwight
my_plot(FieldGoals/FieldGoalAttempts)
# Actual no of attempts per game are least for Dwight
my_plot(FieldGoalAttempts/Games)
my_plot(Points/Games)

# Interesting Observations
# minutes played per game for all players have been dropping over 
# the years
my_plot(MinutesPlayed/Games)

# no of games being played by players r pretty consistent over the years
my_plot(Games)

# Time is valuable
# Who does most goals per minute played
my_plot(FieldGoals/MinutesPlayed)

# Player Style
my_plot(Points/FieldGoals)




