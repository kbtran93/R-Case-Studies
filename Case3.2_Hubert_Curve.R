#===========================================================
# R script to plot Hubbert's model of oil production.
#===========================================================
k = 100 # Maximum amount of recoverable resource.
b = .5 # Resource depleted faster if b is larger.
m = 1 # Initial amount produced is m.
t = (0:100) * 20 / 100 # Range of values of time t from 0 to 20.
s = .01 # Small interval of time.
change.n = k / (1 + ((k–m) / m) * exp(–b * (t + s))) – k / (1 + ((k–m) / m) * exp(−b * t))
# Amount of oil extracted between time t and time t+s.
rate.n = change.n / s # Rate of oil production between time t and time t+s.
plot(
  t,
  rate.n,
  type = "l",
  lty = 1,
  xlab = "time",
  ylab = "rate of oil production"
)