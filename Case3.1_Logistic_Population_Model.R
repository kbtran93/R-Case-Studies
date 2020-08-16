#===========================================================
# R script to plot the logistic model of population growth.
#===========================================================
k = 100 # Population levels off at k.
b = .5 # Higher value of b will result in quicker approach to k.
m = 5 # Initial population size is m.
t = (0:100) * 20 / 100 # Range of values of time t from 0 to 20.
n = k / (1 + ((k−m) / m) * exp(−b * t)) # Logistic population growth function.
plot(t,
     n,
     type = "l",
     xlab = "time",
     ylab = "population size") # Plot n vs t.
k.level = numeric(length(t)) + k # Vector with elements all equal to k.
points(t, k.level, type = "l", lty = 2) # Add dashed line at the level of k.

