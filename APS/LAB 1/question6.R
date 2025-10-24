n=50
p=0.4
lambda=n*p  

simulations = 10000
binom_samples = rbinom(simulations, n, p)
binom_pmf = table(binom_samples) / simulations
binom_x = as.numeric(names(binom_pmf))

pois_samples = rpois(simulations, lambda)
pois_pmf = table(pois_samples) / simulations
pois_x = as.numeric(names(pois_pmf))

plot(binom_x, binom_pmf, type = 'h', lwd=2, col='blue',
     xlab = "Number of requests", ylab = "Probability",
     main = paste("Binomial vs Poisson PMF (lambda =", lambda, ")"),
     xlim = c(0, max(max(binom_x), max(pois_x))),
     ylim = c(0, max(max(binom_pmf), max(pois_pmf))*1.2))

lines(pois_x, pois_pmf, type = 'h', lwd=2, col='red')

legend("topright", legend = c("Binomial", "Poisson"), col = c("blue", "red"), lwd = 2, pch = 19)