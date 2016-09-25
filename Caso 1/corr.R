corr <- function(directorio,horizonte=0){
  directorio2 <- paste("~/ACTUARÍA/Programación Actuarial III/Casos/Caso 1/",directorio,sep="")
  setwd(directorio2)
  correlacion <- integer()
  
  for (n in 1:332) {
    if(n>=10 && n<100){
      i <- paste(0,n,sep="")
    }
    if(n<10){
      i <- paste(0,0,n,sep="")
    }
    if(n>=100){
      i <- n
    }
    
    name <- paste(i,".csv",sep="")
    data <- read.csv(name)
    data2 <- data[,2:3]
    cc <- complete.cases(data2)
    suma <- sum(cc)
    r <- c(data2 [cc,])
    if(suma>horizonte){
      correlacion <- c(correlacion,cor(r$sulfate,r$nitrate))
    } else {
      correlacion <- c(correlacion,0)
    }
  }
  if(sum(correlacion) == 0){
    correlacion <- 0
  }
  print(correlacion)
}

corr("specdata",0)