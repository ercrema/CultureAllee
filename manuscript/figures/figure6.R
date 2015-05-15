source("../../src/alleeIGC.R")
source("../../src/basin.R")
source("../../src/utility.R")

z=0.05
Am=0.2
An=0.4
Km=0.8
Kn=1
r.n=0.05
r.m=r.n
x.lim=c(0,1.2)
y.lim=c(0,1.2)

cAn=0.25
cAm=-0.25
cKn=0.25
cKm=-0.25

figure6a <- basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=4)

cAn=-0.25
cAm=0.25
cKn=-0.25
cKm=0.25

figure6b <- basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=4)

basinPlot(res=figure6a,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="b",xlab="a",ylab="b")
basinPlot(res=figure6b,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="b",xlab="a",ylab="b")



