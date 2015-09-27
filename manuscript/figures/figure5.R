source("../../src/alleeIGC.R")
source("../../src/basin.R")
source("../../src/utility.R")


pdf('figure5.pdf', width=15, height=10)
par(mfrow=c(2,3))
load('../../experimentMN3/01_lambda/result_002.Rdata')
title=substitute(paste(z == i, "  ", lambda == j), list(i=z,j=lambda))
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b", cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[a]),expression(K[a])),padj=0.8, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
axis(side=4,at=c(An,Kn),labels=c(expression(A[b]),expression(K[b])),hadj=0.5,las=2, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)

load('../../experimentMN3/01_lambda/result_001.Rdata')
title=substitute(paste(z == i, "  ", lambda == j), list(i=z,j=lambda))
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b", cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[a]),expression(K[a])),padj=0.8, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
axis(side=4,at=c(An,Kn),labels=c(expression(A[b]),expression(K[b])),hadj=0.5,las=2, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)

load('../../experimentMN3/01_lambda/result_000.Rdata')
title=substitute(paste(z == i, "  ", lambda == j), list(i=z,j=lambda))
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b", cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[a]),expression(K[a])),padj=0.8, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
axis(side=4,at=c(An,Kn),labels=c(expression(A[b]),expression(K[b])),hadj=0.5,las=2, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)

load('../../experimentMN3/01_lambda/result_005.Rdata')
title=substitute(paste(z == i, "  ", lambda == j), list(i=z,j=lambda))
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b", cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[a]),expression(K[a])),padj=0.8, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
axis(side=4,at=c(An,Kn),labels=c(expression(A[b]),expression(K[b])),hadj=0.5,las=2, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)

load('../../experimentMN3/01_lambda/result_004.Rdata')
title=substitute(paste(z == i, "  ", lambda == j), list(i=z,j=lambda))
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b", cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[a]),expression(K[a])),padj=0.8, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
axis(side=4,at=c(An,Kn),labels=c(expression(A[b]),expression(K[b])),hadj=0.5,las=2, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)

load('../../experimentMN3/01_lambda/result_003.Rdata')
title=substitute(paste(z == i, "  ", lambda == j), list(i=z,j=lambda))
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b", cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[a]),expression(K[a])),padj=0.8, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)
axis(side=4,at=c(An,Kn),labels=c(expression(A[b]),expression(K[b])),hadj=0.5,las=2, cex.lab=2, cex.axis=2, cex.main=2, cex.sub=2)

dev.off()



