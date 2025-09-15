# Question 1
n <- 50
p <- 0.85

# i. Distribution
print(" X ~ Binomial(n = 50, p = 0.85)")

# ii. Probability at least 47 students pass
pbinom(46, size = n, prob = p, lower.tail = FALSE)

# Question 2
lambda <- 12

# i. Random variable
print(" X = number of calls received in one hour")

# ii. Distribution
print("X ~ Poisson(lambda = 12)")

# iii. Probability that exactly 15 calls are received
dpois(15, lambda = lambda)

