source("../../src/alleeIGC.R")
source("../../src/basin.R")
source("../../src/utility.R")

                                        #Figure 3
lambda=0.15
z=0.05
Am=0.2
An=0.4
Km=0.8
Kn=1
cAn=0
cAm=0
cKn=0
cKm=0
r.n=0.05
r.m=r.n
x.lim=c(0,1.2)
y.lim=c(0,1.2)


z=0

figure3a=basin(x.lim=x.lim,y.lim=x.lim,points=41,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=5)

z=0.05

figure3b=basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=5)

save.image("figure3.RData")


load("figure3.RData")
source("../../src/alleeIGC.R")
source("../../src/basin.R")
source("../../src/utility.R")


pdf('figure3.pdf', width=14, height=8)

par(mfrow=c(1,2))
basinPlot(res=figure3a,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0",xlab="a",ylab="b")
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[a]),expression(K[a])),padj=0.8)
axis(side=4,at=c(An,Kn),labels=c(expression(Ab),expression(Kb)),hadj=0.5,las=2)
z=0
trajPlot(ini.m=0.22,ini.n=0.6,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.61,ini.n=0.42,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.95,ini.n=0.39,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.5,ini.n=0.6,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)

text(0.2480076,0.6390929,labels="i",col=1,font=2)
text(0.6483907,0.4705729,labels="k",col=1,font=2)
text(0.9674449,0.4328860,labels="l",col=1,font=2)
text(0.5,0.65,labels="j",col=1,font=2)



basinPlot(res=figure3b,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.05",xlab="a",ylab="b")
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[a]),expression(K[a])),padj=0.8)
axis(side=4,at=c(An,Kn),labels=c(expression(Ab),expression(Kb)),hadj=0.5,las=2)
z=0.05
trajPlot(ini.m=0.22,ini.n=0.6,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.61,ini.n=0.42,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.95,ini.n=0.39,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.5,ini.n=0.6,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
text(0.2480076,0.6390929,labels="i",col=1,font=2)
text(0.6483907,0.4705729,labels="k",col=1,font=2)
text(0.9674449,0.4328860,labels="l",col=1,font=2)
text(0.5,0.65,labels="j",col=1,font=2)

dev.off()

