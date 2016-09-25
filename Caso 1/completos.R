completos <- function(directorio,id=1:332){
  directorio2 <- paste("~/ACTUARÍA/Programación Actuarial III/Casos/Caso 1/",directorio,sep="")
  setwd(directorio2)
  
  x <- min(id)
  y <- max(id)
  suma <- integer()
  
  for (n in x:y){
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
    suma <- c(suma,sum(cc))
  }
  tabla <- data.frame(id=id,nobs=suma)
  print(tabla)
}

completos("specdata",id=1:332)