load("./results/data/scenario2.RData")


ini.m=0.3090914
ini.n=0.7921652
z=0

layout(matrix(1:6,3,2,byrow=TRUE))
basinPlot(res000,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0",cex.lab=1.4,cex.main=1.8)
axis(side=3,at=c(Am,Km),labels=c(expression(A[m]),expression(K[m])),padj=1.1)
axis(side=4,at=c(An,Kn),labels=c(expression(A[n]),expression(K[n])),hadj=0.5,las=2)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
trajPlot(Am=Am,Km=Km,An=An,Kn=Kn,ini.m=ini.m,ini.n=ini.n,z=z)
tmp=allee(Am=Am,Km=Km,An=An,Kn=Kn,ini.m=ini.m,ini.n=ini.n,z=z)
plot(tmp$m[1:1200],type="l",ylim=c(0,1),col="indianred",lwd=2,ylab="Population Size",xlab="Time")
axis(side=4,at=c(Km,Kn),labels=c(expression(K[m]),expression(K[n])),hadj=0.5,las=2)
abline(h=c(Km,Kn),lty=2)
lines(tmp$n[1:1200],col="royalblue",lwd=2)
legend("right",legend=c("m","n"),lty=1,lwd=2,col=c("indianred","royalblue"))

z=0.1
basinPlot(res01,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.1",cex.lab=1.4,cex.main=1.8)
axis(side=3,at=c(Am,Km),labels=c(expression(A[m]),expression(K[m])),padj=1.1)
axis(side=4,at=c(An,Kn),labels=c(expression(A[n]),expression(K[n])),hadj=0.5,las=2)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
trajPlot(Am=Am,Km=Km,An=An,Kn=Kn,ini.m=ini.m,ini.n=ini.n,z=z)
tmp=allee(Am=Am,Km=Km,An=An,Kn=Kn,ini.m=ini.m,ini.n=ini.n,z=z)
plot(tmp$m[1:1200],type="l",ylim=c(0,1),col="indianred",lwd=2,ylab="Population Size",xlab="Time")
axis(side=4,at=c(Km,Kn),labels=c(expression(K[m]),expression(K[n])),hadj=0.5,las=2)
abline(h=c(Km,Kn),lty=2)
lines(tmp$n[1:1200],col="royalblue",lwd=2)
legend("right",legend=c("m","n"),lty=1,lwd=2,col=c("indianred","royalblue"))

z=0.5
basinPlot(res05,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.5",cex.lab=1.4,cex.main=1.8)
axis(side=3,at=c(Am,Km),labels=c(expression(A[m]),expression(K[m])),padj=1.1)
axis(side=4,at=c(An,Kn),labels=c(expression(A[n]),expression(K[n])),hadj=0.5,las=2)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
trajPlot(Am=Am,Km=Km,An=An,Kn=Kn,ini.m=ini.m,ini.n=ini.n,z=z)
tmp=allee(Am=Am,Km=Km,An=An,Kn=Kn,ini.m=ini.m,ini.n=ini.n,z=z)
plot(tmp$m[1:1200],type="l",ylim=c(0,1),col="indianred",lwd=2,ylab="Population Size",xlab="Time")
axis(side=4,at=c(Km,Kn),labels=c(expression(K[m]),expression(K[n])),hadj=0.5,las=2)
abline(h=c(Km,Kn),lty=2)
lines(tmp$n[1:1200],col="royalblue",lwd=2)
legend("right",legend=c("m","n"),lty=1,lwd=2,col=c("indianred","royalblue"))
