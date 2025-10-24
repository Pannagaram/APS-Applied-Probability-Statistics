x = rbinom(1, 50, 0.6)
print(x)
n = 50
outcomes = 0:n
rv = vector("numeric", length = 51)
for(i in outcomes){
  rv[i+1] = dbinom(i, 50, 0.6)
}
plot(outcomes, rv, type = 'h', xlim = c(0, n-1), ylim = c(0, 0.2))