# Generate a random number from a normally distributed set of numbers
# we are generating a random number somewhere very close to zero

# difference b/w if statement and while loop is that, if does not run 
# many times, it only runs 1 time but inside the simple brackets u 
# still specify the logical expression (T/F) as with while loop and
# body inside the curly brackets

x <- rnorm(1)

rm(answer)
if(x > 1){
  answer <- "Greater than 1"
}else{
  answer <- "Less than or equal to 1"
}

# Nested if-else (nesting statement)

x <- rnorm(1)

rm(answer)
if(x > 1){
  answer <- "Greater than 1"
}else{
  
  if(x >= -1){
    answer <- "x is b/w -1 and 1"
    }else{
      answer <- "x is less than -1"
    }
}

# else if statement (chaining statement)

x <- rnorm(1)

rm(answer)
if(x > 1){
  answer <- "Greater than 1"
}else if(x >= -1){
  answer <- "x is b/w -1 and 1"
}else{
  answer <- "x is less than -1"
}
  