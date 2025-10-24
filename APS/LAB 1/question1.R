x = rbinom(1, 1, 0.6)
print(x)
y = dbinom(1, 1, 0.6)
print(y)
p = 0.6
prob = c(1-p, p)
x_values = c(0, 1)
plot(x_values, prob, type = 'h', xlim=c(0, 2), ylim= c(0, 1))