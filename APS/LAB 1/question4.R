Ti = 5
t = 0.01
n = Ti/t
outcomes=0:n
rv = vector("numeric", length = n+1)
for(i in outcomes){
  rv[i+1] = dbinom(i, n, 0.6)
}
moment_ans=function(q){
  s=0
  for(i in outcomes){
    s=s+(i^q)*rv[i+1]
  }
  return(s)
}
mmean=moment_ans(1)
mvar=moment_ans(2)-((moment_ans(1))^2)
print(mmean)
print(mvar)