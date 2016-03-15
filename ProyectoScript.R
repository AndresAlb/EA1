directorio <- "C:/Users/Andres/OneDrive/Tenth Semester/Estadística Aplicada I/GitHub/EA1"
setwd(directorio)
knitr::opts_knit$set(root.dir = directorio)

sessionInfo()

library(plyr)
###FUENTE
diabetes.fuente <- NULL 
titulos.fuente <- NULL
for (i in 1:12){ 
  diabetes.fuente[[i]] <- read.csv(paste("./Datos/BrutosCSV/Fuente/FuenteFem",i+2002,".csv",  sep = "" ), stringsAsFactors = FALSE)
  titulos.fuente[i] <- paste("FuenteFem",i+2002,sep="")
}

for (i in 1:12){
  diabetes.fuente[[i]] <- read.csv(paste("./Datos/BrutosCSV/Fuente/FuenteGen",i+2002,".csv",sep=""),stringsAsFactors=FALSE)
  titulos.fuente[i] <- paste("FuenteGen",i+2002,sep="")
}

for (i in 1:12){
  diabetes.fuente[[i]] <- read.csv(paste("./Datos/BrutosCSV/Fuente/FuenteMasc",i+2002,".csv",sep=""),stringsAsFactors=FALSE)
  titulos.fuente[i] <- paste("FuenteMasc",i+2002,sep="")
}
names(diabetes.fuente) <- titulos.fuente

###EDAD
diabetes.edad <- NULL
titulos.edad <- NULL
for (i in 1:12){
  diabetes.edad[[i]] <- read.csv(paste("./Datos/BrutosCSV/Grupo/GrupoFem",i+2002,".csv",sep=""),stringsAsFactors=FALSE)
  titulos.edad[i] <- paste("GrupoFem",i+2002,sep="")
}

for (i in 1:12){
  diabetes.edad[[i]] <- read.csv(paste("./Datos/BrutosCSV/Grupo/GrupoGen",i+2002,".csv",sep=""),stringsAsFactors=FALSE)
  titulos.edad[i] <- paste("GrupoGen",i+2002,sep="")
}

for (i in 1:12){
  diabetes.edad[[i]] <- read.csv(paste("./Datos/BrutosCSV/Grupo/GrupoMasc",i+2002,".csv",sep=""),stringsAsFactors=FALSE)
  titulos.edad[i] <- paste("GrupoMasc",i+2002,sep="")
}
names(diabetes.edad) <- titulos.edad

###MES
diabetes.mes <- NULL 
titulos.mes <- NULL
for (i in 1:12){ 
  diabetes.mes[[i]] <- read.csv(paste("./Datos/BrutosCSV/Mes/MesFem",i+2002,".csv",  sep = "" ), stringsAsFactors = FALSE)
  titulos.mes[i] <- paste("GrupoFem",i+2002,sep="")
}

for (i in 1:12){
  diabetes.mes[[i]] <- read.csv(paste("./Datos/BrutosCSV/Mes/MesGen",i+2002,".csv",sep=""),stringsAsFactors=FALSE)
  titulos.mes[i] <- paste("GrupoGen",i+2002,sep="")
}

for (i in 1:12){
  diabetes.mes[[i]] <- read.csv(paste("./Datos/BrutosCSV/Mes/MesMasc",i+2002,".csv",sep=""),stringsAsFactors=FALSE)
  titulos.mes[i] <- paste("GrupoMasc",i+2002,sep="")
}
names(diabetes.mes) <- titulos.mes