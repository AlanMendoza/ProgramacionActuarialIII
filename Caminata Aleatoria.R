t <- 0
d <- 0
for(i in 1:100){
  z <- 5
  while(z>=3 && z<=10) {
    print(z)
    r <- z
    x <- rbinom(1,1,0.5)
    if(x==1){
      z <- z + 0.5
    } else {
      z <- z - 0.5
    }
    print(r)
  } 
  if(r<=3){
    t <- t + 1
  } else { 
    d <- d + 1
  }
}
if(d < t){"Tiende a ser menor que tres"
} else { 
  "Tiende a ser diez"}