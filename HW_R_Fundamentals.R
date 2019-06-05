#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#-----------------
# Profit for each month
profit <- revenue - expenses
profit
#[1]  2522.67  1911.39 -3707.79 -2914.31  -599.92  7265.24  8210.55  3944.97
#[9]  3328.39 -2238.65   659.60 11629.54

# Profit after tax for each month (the tax rate is 30%)
netprofit = (profit - (30*profit)/100)
netprofit
# [1]  1765.869  1337.973 -2595.453 -2040.017  -419.944  5085.668  5747.385
# [8]  2761.479  2329.873 -1567.055   461.720  8140.678
net.profit <- round(netprofit,digits=2)
net.profit
#[1]  1765.87  1337.97 -2595.45 -2040.02  -419.94  5085.67  5747.39  2761.48
#[9]  2329.87 -1567.06   461.72  8140.68

# profit margin for each month - equals to profit after tax divided by revenue
profit_margin = round(net.profit/revenue, 2)*100
profit_margin
#12  18 -30 -22  -5  63  50  28  23 -11   4  53

#good months - where the profit after tax was greater than the mean for the year
mean_value <- mean(netprofit)
mean_value
# [1] 1750.681
good_months <- netprofit > mean_value
good_months
# Jan, june, july, aug, sep, dec

#bad months - where the profit after tax was less than the mean for the year
bad_months <- netprofit < mean_value
bad_months
# or worst_month <- !good_months
# Feb, march, april,may,oct, nov

#the best month - where the profit after tax was max for the year
best_month <- max(netprofit)
best_month
# Dec

best_month <- netprofit == max(netprofit)
best_month

#the worst month - where the profit after tax was min for the year
worst_month <- min(netprofit)
worst_month
# march

# comparison operator to take out the month instead of just least value calculate
worst_month <- netprofit == min(netprofit) 
worst_month

# ==, >, < operators will result in true or false (Boolean/logical)

#Results for dollar values need to be calculated with $0.01 precision, 
#but need to be presented in Units of $1,000 (i.e. 1k) with no decimal
#points

revenue_1000 <- round(revenue/1000,0)
revenue_1000

expenses_1000 <- round(expenses/1000,0)
expenses_1000

profit_1000 <- round(profit/1000,0)
profit_1000

netprofit_1000 <- round(netprofit/1000,0)
netprofit_1000

# Display for user

revenue_1000
expenses_1000
profit_1000
netprofit_1000
profit_margin
good_months
bad_months
best_month
worst_month

# matrices

m <- rbind(
  revenue_1000,
  expenses_1000,
  profit_1000,
  netprofit_1000,
  profit_margin,
  good_months,
  bad_months,
  best_month,
  worst_month
)
m


