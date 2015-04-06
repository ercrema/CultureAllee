

place<-getwd()
source("/home/tcrnerc/Scratch/models/allee/src/alleeNGC.R")
source("/home/tcrnerc/Scratch/models/allee/src/basin.R")
source("/home/tcrnerc/Scratch/models/allee/src/utility.R")
setwd(place)

lambda=seq(0,0.5,0.01)
z=seq(0,0.5,0.01)
param=expand.grid(lambda=lambda,z=z)
Args<-as.numeric(commandArgs(TRUE))
thisparam<-param[Args,]
Am=0.1
An=Am+thisparam$lambda
Km=0.6
Kn=Km+thisparam$lambda
z=thisparam$z
cAn=0
cAm=0
cKn=0
cKm=0
r.n=0.05
r.m=EqualiseMaxGrowthRate(An=An,Am=Am,Kn=Kn,Km=Km)*r.n
x.lim=c(0,1.2)
y.lim=c(0,1.2)
    
res=basin(x.lim=x.lim,y.lim=x.lim,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=FALSE)

resCount=basinCount(res)
finalres=cbind(thisparam,as.data.frame(resCount))

name<-paste("./res",Args,".csv",sep="")
write.csv(finalres,file=name)
