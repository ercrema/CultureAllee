source("./src/alleeIGC.R")
source("./src/basin.R")
source("./src/utility.R")


lambda=0.1
z=0.5
Am=0.1
An=Am+lambda
Km=0.6
Kn=Km+lambda
cAn=0
cAm=0
cKn=0
cKm=0
r.n=0.05
r.m=r.n
x.lim=c(0,1.2)
y.lim=c(0,1.2)


print("Executing FigureX Basin....")
figureX=basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=50000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=6)

save(z,lambda,Am,An,Km,Kn,cAn,cAm,cKn,cKm,r.n,r.m,x.lim,y.lim,figureX,file="figureX.RData")
