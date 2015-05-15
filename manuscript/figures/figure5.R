source("../../src/alleeIGC.R")
source("../../src/basin.R")
source("../../src/utility.R")

z=0.05
Am=0.2
Km=0.8

cAn=0
cAm=0
cKn=0
cKm=0
r.n=0.05
r.m=r.n
x.lim=c(0,1.2)
y.lim=c(0,1.2)

lambda=0
diff = Km-Am
An=Am + lambda*diff
Kn=Km + lambda*diff


figure5a <- basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=4)

lambda=0.5
diff = Km-Am
An=Am + lambda*diff
Kn=Km + lambda*diff

figure5b <- basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=4)

lambda=0.9
diff = Km-Am
An=Am + lambda*diff
Kn=Km + lambda*diff

figure5b <- basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=4)

basinPlot(res=figure5c,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="b",xlab="a",ylab="b")
basinPlot(res=figure5c,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="b",xlab="a",ylab="b")
basinPlot(res=figure5c,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="b",xlab="a",ylab="b")

