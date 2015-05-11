source("./src/alleeIGC.R")
source("./src/basin.R")
source("./src/utility.R")

lambda=0.3
z=0
Am=0.2
An=Am+lambda
Km=0.7
Kn=Km+lambda
cAn=0
cAm=0
cKn=0
cKm=0
r.n=0.05
r.m=r.n
x.lim=c(0,1.2)
y.lim=c(0,1.2)



figure=basin(x.lim=x.lim,y.lim=x.lim,points=41,timeSteps=5000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=FALSE,multicore=TRUE,cores=2)

basinPlot(figure,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,xlab="a",ylab="b")
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[a]),expression(K[a])),padj=0.8)
axis(side=4,at=c(An,Kn),labels=c(expression(Ab),expression(Kb)),hadj=0.5,las=2)


trajPlot(ini.m=0.1,ini.n=0.2,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.5,ini.n=0.2,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.1,ini.n=0.6,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.5,ini.n=0.7,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=1,ini.n=0.8,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.75,ini.n=1.1,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.5,ini.n=1.19,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)

dev.print(device=pdf,"~/github/CultureAllee/manuscript/figures/figure2.pdf")
