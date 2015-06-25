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



bifurcationPlotSingle<-function(Zseq=seq(0,0.7,0.005),timeSteps=10000,cexSetting=6,...)
{
    plot(x=1,y=1,xlim=c(min(Zseq),max(Zseq)),type="n",ylab="",xlab="",ylim=c(0.1,1.1),cex.axis=cexSetting,cex.lab=cexSetting)
    for (z in Zseq)
        {
            tmp=unique(allee(timeSteps=timeSteps,storeFinalOnly=FALSE,z=z,ini.m=0.4,ini.n=0.4,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm)[[1]][(timeSteps-500):timeSteps])
            points(x=rep(z,length(tmp)),y=tmp,pch=20,cex=0.5)
        }
mtext(side=1,"z",line=6,cex=6)
mtext(side=2,"a",line=6,cex=6)
        }

par(mar=c(5, 6, 4, 2) + 2)
bifurcationPlotSingle(Zseq=seq(0.4,0.82,0.001),timeSteps=10000,ini.m=0.4,ini.n=0.4,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm)


dev.print(device=jpeg,"~/github/CultureAllee/manuscript/figures/figure4.jpg",width=4000,height=3000,pointsize = 30)

par(mfrow=c(1,3))
basePlot(timeSteps=200,storeFinalOnly=FALSE,z=0,ini.m=0.4,ini.n=0.4,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,leg=TRUE,ymax=0.9)
title("z=0")
basePlot(timeSteps=200,storeFinalOnly=FALSE,z=0.3,ini.m=0.4,ini.n=0.4,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,leg=FALSE,ymax=0.9)
title("z=0.3")
basePlot(timeSteps=200,storeFinalOnly=FALSE,z=0.6,ini.m=0.4,ini.n=0.4,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,leg=FALSE,ymax=0.9)
title("z=0.6")
dev.print(device=pdf,"~/github/CultureAllee/manuscript/figures/figure4b.pdf")

