# Vectorized operations
x <- rnorm(5)
x

#R-specific programming loop
# Iterating over value of vector itself x[1]
for(i in x)
{
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

# conventional programming loop
# Iterating over index only [1]
for(j in 1:5)
{
  print[x(j)]
}

# comparison vectorized and devectorized operations
n <- 100
a <- rnorm(n)
b <- rnorm(n)

# vectorized approach

c <- a * b

# De-vectorized approach
d <- rep(NA,n)
for(i in 1:n){
  d[i] = a[i] * b[i]
}


