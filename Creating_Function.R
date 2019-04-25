# Creating a function
# Put the code of your function i.e body in curly brackets and 
# assign name to ur function here it is myplot
# So myplot is an object and inside it instead of putting a value,
# vector or matrix u r putting a function
# So a function is also an object in R

my_plot <- function(){
  Data <- MinutesPlayed[2:3,,drop=F]
  matplot(t(Data),type = "b", pch = 15:18, col = c(1:4,6))
  
  legend("bottomleft", inset=0.01, legend=Players[2:3],pch = 15:18, col = c(1:4,6))
}

# Now call the function
my_plot()

# In function we can specify parameters / inputdata which we can
# change everytime when we call function cz we do not want to
# change the function itself again and again just to change i/p
# Default rows to be taken 1:10 in case i/p not supplied by the user

my_plot <- function(no_of_players){
  Data <- MinutesPlayed[no_of_players,,drop=F]
  matplot(t(Data),type = "b", pch = 15:18, col = c(1:4,6))
  
  legend("bottomleft", inset=0.01, legend=Players[no_of_players],pch = 15:18, col = c(1:4,6))
}

# Pass value/vector to function while calling it and it will replace this
# value in input_data in function itself so function executes as per
# that input data supplied
my_plot(1:5)

# Now we still observe that in this function data we need to change
# everytime likw MinutespLayed to points etc so function is still
# not flexible as need to recode everytime due to this parameter
# so we add another parameter for function which is input_data

my_plot <- function(input_data, no_of_players){
  Data <- input_data[no_of_players,,drop=F]
  matplot(t(Data),type = "b", pch = 15:18, col = c(1:4,6))
  
  legend("bottomleft", inset=0.01, legend=Players[no_of_players],pch = 15:18, col = c(1:4,6))
}

# Calling function by passing 2 inputs expected by function
my_plot(Points, 1:5)

# You can also specify default value for input in function itself
# so when user does not pass any value for that input parameter
# function will automatically take default value present for that
# parameter in the function

my_plot <- function(input_data, no_of_players = 1:10){
  Data <- input_data[no_of_players,,drop=F]
  matplot(t(Data),type = "b", pch = 15:18, col = c(1:4,6))
  
  legend("bottomleft", inset=0.01, legend=Players[no_of_players],pch = 15:18, col = c(1:4,6))
}

# Calling function by passing only 1 input, 2nd should be taken 
# as default value
my_plot(Points)





