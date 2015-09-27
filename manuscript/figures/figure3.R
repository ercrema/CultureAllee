source("../../src/alleeIGC.R")
source("../../src/basin.R")
source("../../src/utility.R")

pdf('figure3.pdf', width=16, height=8)
par(mfrow=c(1,2))

load('../../experimentMN3/00_fig3/result_000.Rdata')
title=substitute(paste(z == i), list(i=z))
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b", cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[a]),expression(K[a])),padj=0.8, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
axis(side=4,at=c(An,Kn),labels=c(expression(A[b]),expression(K[b])),hadj=0.5,las=2, , cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
trajPlot(ini.m=0.25,ini.n=0.5,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.5,ini.n=0.6,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.61,ini.n=0.38,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.95,ini.n=0.32,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)

text(0.26,0.48,labels="i",col=1,font=2, cex=2)
text(0.5,0.65,labels="j",col=1,font=2, cex=2)
text(0.58,0.39,labels="k",col=1,font=2, cex=2)
text(0.98,0.32,labels="l",col=1,font=2, cex=2)

load('../../experimentMN3/00_fig3/result_001.Rdata')
title=substitute(paste(z == i), list(i=z))
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b", cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[a]),expression(K[a])),padj=0.8, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
axis(side=4,at=c(An,Kn),labels=c(expression(A[b]),expression(K[b])),hadj=0.5,las=2, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)

trajPlot(ini.m=0.25,ini.n=0.5,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.5,ini.n=0.6,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.61,ini.n=0.38,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
trajPlot(ini.m=0.95,ini.n=0.32,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)

text(0.26,0.48,labels="i",col=1,font=2, cex=2)
text(0.5,0.65,labels="j",col=1,font=2, cex=2)
text(0.58,0.39,labels="k",col=1,font=2, cex=2)
text(0.98,0.32,labels="l",col=1,font=2, cex=2)

dev.off()

