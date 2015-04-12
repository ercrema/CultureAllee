setwd("./CultureAllee/")
source("./src/alleeIGC.R")
source("./src/basin.R")
source("./src/utility.R")



# Figure 1 Basin Plot with trajectory
load("/Users/enryu/github/CultureAllee/SAAanlysis/figure1.RData")
basinPlot(res=figure1,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm)
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[m]),expression(K[m])),padj=0.8)
axis(side=4,at=c(An,Kn),labels=c(expression(A[n]),expression(K[n])),hadj=0.5,las=2)

trajPlot(ini.m=0.4,ini.n=0.6,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.2,ini.n=0.43,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.1005,ini.n=0.6152147,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
dev.print(device=pdf,"./SAAanlysis/fig1.pdf")

# Figure 2 Basin Plot with trajectory
load("/Users/enryu/github/CultureAllee/SAAanlysis/figure2a.RData")
par(mfrow=c(1,3))
basinPlot(res=figure2a,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0")
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[m]),expression(K[m])),padj=0.8)
axis(side=4,at=c(An,Kn),labels=c(expression(A[n]),expression(K[n])),hadj=0.5,las=2)

load("/Users/enryu/github/CultureAllee/SAAanlysis/figure2b.RData")
basinPlot(res=figure2b,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.05")
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[m]),expression(K[m])),padj=0.8)
axis(side=4,at=c(An,Kn),labels=c(expression(A[n]),expression(K[n])),hadj=0.5,las=2)

load("/Users/enryu/github/CultureAllee/SAAanlysis/figure2c.RData")
basinPlot(res=figure2c,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.3")
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[m]),expression(K[m])),padj=0.8)
axis(side=4,at=c(An,Kn),labels=c(expression(A[n]),expression(K[n])),hadj=0.5,las=2)

dev.print(device=pdf,"./SAAanlysis/fig2.pdf")


# Figure 5 Basin Plot with trajectory
par(mfrow=c(1,2))
load("/Users/enryu/github/CultureAllee/SAAanlysis/figure5a.RData")
basinPlot(res=figure5a,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.3, No Competition")
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[m]),expression(K[m])),padj=0.8)
axis(side=4,at=c(An,Kn),labels=c(expression(A[n]),expression(K[n])),hadj=0.5,las=2)

load("/Users/enryu/github/CultureAllee/SAAanlysis/figure5b.RData")
basinPlot(res=figure5b,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.3, With Competition (c=0.25)")
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[m]),expression(K[m])),padj=0.8)
axis(side=4,at=c(An,Kn),labels=c(expression(A[n]),expression(K[n])),hadj=0.5,las=2)
dev.print(device=pdf,"./SAAanlysis/fig5.pdf")

# Notice that the analtycal prediction of the equilibrium point for the competition model 
# The analytical expectation is :
ExpStableNode(Kn,Km,cKn,cKm)
ExpStableNode(Kn,Km,cKn,cKm)

z=0
allee(ini.m=0.36,ini.n=1.04,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z,storeFinalOnly=TRUE,timeSteps=10000)
allee(ini.m=0.6,ini.n=0.9,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z,storeFinalOnly=TRUE,timeSteps=10000)
allee(ini.m=ExpStableNode(Kn,Km,cKn,cKm)$m,ini.n=ExpStableNode(Kn,Km,cKn,cKm)$n,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z,storeFinalOnly=TRUE,timeSteps=10000)
allee(ini.m=0.35,ini.n=1.032,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z,storeFinalOnly=TRUE,timeSteps=10000)

#this is due to floating point arithmethic, somehowe when m=0.36 and n=1.04, Rm and Rn are both different from 0 but too close so that after multiplciation they are virtually treated as if they are zero.





# Figure X Unstable Equilibria
load("/Users/enryu/github/CultureAllee/SAAanlysis/figureX.RData")
basinPlot(res=figureX,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm)
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[m]),expression(K[m])),padj=0.8)
axis(side=4,at=c(An,Kn),labels=c(expression(A[n]),expression(K[n])),hadj=0.5,las=2)
dev.print(device=pdf,"./SAAanlysis/figX.pdf")
