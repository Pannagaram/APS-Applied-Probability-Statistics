# (7) Error vs n
lambda = 8
n_values = seq(10, 200, by=10)
errors = numeric(length(n_values))

for(j in 1:length(n_values)){
  n = n_values[j]
  p = lambda / n
  
  outcomes = 0:(lambda+20)
  
  binom_pmf = dbinom(outcomes, n, p)
  pois_pmf = dpois(outcomes, lambda)
  
  errors[j] = sum(abs(binom_pmf - pois_pmf))
}

plot(n_values, errors, type="b", lwd=2,
     xlab="n", ylab="Error (L1 distance)",
     main="Poisson Approximation Error vs n")
