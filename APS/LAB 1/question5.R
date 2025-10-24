lambdas=c(10, 20, 30, 40, 50)

par(mfrow=c(3,2), mar=c(4,4,2,1))  

for(lambda in lambdas) {
  max_x=ceiling(lambda + 4 * sqrt(lambda)) 
  outcomes=0:max_x
  
  pmf=dpois(outcomes, lambda)

  plot(outcomes, pmf, type='h', lwd=2,
       main=paste("Poisson PMF, λ =", lambda),
       xlab="Number of requests (X)", ylab="Probability",
       ylim=c(0, max(pmf)*1.1))
}
