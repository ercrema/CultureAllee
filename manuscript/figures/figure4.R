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



bifurcationPlotSingle<-function(Zseq=seq(0,0.7,0.005),timeSteps=10000,...)
{
    plot(x=1,y=1,xlim=c(min(Zseq),max(Zseq)),type="n",ylab="a",xlab="z",ylim=c(0.1,1.1))
    for (z in Zseq)
        {
            tmp=unique(allee(timeSteps=timeSteps,storeFinalOnly=FALSE,z=z,ini.m=0.4,ini.n=0.4,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm)[[1]][(timeSteps-500):timeSteps])
            points(x=rep(z,length(tmp)),y=tmp,pch=20,cex=0.5)
               }
        }

bifurcationPlotSingle(Zseq=seq(0.4,0.82,0.001),timeSteps=10000,ini.m=0.4,ini.n=0.4,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm)








cexSetting=10
bifurcationPlotDouble<-function(Zseq=seq(0,0.7,0.005),timeSteps=10000,cexSetting,...)
{
    plot(x=1,y=1,xlim=c(min(Zseq),max(Zseq)),type="n",ylab="",xlab="z",ylim=c(0,1.2),cex.axis=cexSetting,cex.lab=cexSetting)
    for (z in Zseq)
        {
            tmp=allee(timeSteps=timeSteps,storeFinalOnly=FALSE,z=z,...)
            tmp1=unique(tmp[[1]][(timeSteps-500):timeSteps])
            tmp2=unique(tmp[[2]][(timeSteps-500):timeSteps])
            points(x=rep(z,length(tmp1)),y=tmp1,pch=20,cex=1,col=rgb(1,0,0,0.3))
            points(x=rep(z,length(tmp2)),y=tmp2,pch=20,cex=1,col=rgb(0,0,1,0.3))
        }
}

par(mfrow=c(1,3))
bifurcationPlotDouble(Zseq=seq(0,0.7,0.0025),timeSteps=10000,ini.m=0.11,ini.n=0.4,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,cexSetting=cexSetting)
title("a",cex.main=cexSetting)
bifurcationPlotDouble(Zseq=seq(0,0.7,0.0025),timeSteps=10000,ini.m=0.5,ini.n=0.21,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,cexSetting=cexSetting)
title("b",cex.main=cexSetting)
bifurcationPlotDouble(Zseq=seq(0,0.7,0.0025),timeSteps=10000,ini.m=0.4,ini.n=0.4,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,cexSetting=cexSetting)
title("c",cex.main=cexSetting)

dev.print(device=jpeg,"~/github/CultureAllee/manuscript/figures/figure4.jpg",width=5400,height=1800,pointsize = 50)



