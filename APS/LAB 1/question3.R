moment_ans=function(q){
  s=0
  for(i in outcomes){
    s = s+(i^q)*rv[i+1]
  }
  return(s)
}
print(moment_ans(1))
mvar=moment_ans(2)-((moment_ans(1))^2)
print(mvar)
