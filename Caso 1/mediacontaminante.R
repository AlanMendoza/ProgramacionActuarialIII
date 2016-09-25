mediacontaminante <- function(directorio,contaminante,id=1:332){
  directorio2 <- paste("~/ACTUARÍA/Programación Actuarial III/Casos/Caso 1/",directorio,sep="")
  setwd(directorio2)
  
  x <- min(id)
  y <- max(id)
  z <- y-x+1
  p <- 0
  
  for (n in x:y) {
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
    
    if(contaminante=="sulfate"){ 
      a <- data[,2]
    }
    if(contaminante=="nitrate"){
      a <- data[,3]
    }
    
    medias <- mean(a, na.rm = T)
    p <- p + medias
  }
  pt <- p/z
  print(pt)
}

mediacontaminante("specdata","sulfate",id=1)
mediacontaminante("specdata","nitrate",id=1)
