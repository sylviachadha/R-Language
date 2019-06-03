# Prove law of large numbers

#Let start with N=100 randomly distributed numbers
# rnorm function mean=0 and standard deviation=1

n <- 1000000 # Input
counter <- 0
# In R programming language i is not just a counter or an index,
# it becomes the variable itself
for (i in rnorm(n)){
  if (i > -1 & i < 1){
    counter <- counter + 1
  }
}
counter
answer <- counter/n
answer

# compare to 68.2%
