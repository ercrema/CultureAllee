
##Example (Figure 4)

source("./code.R")

#parameters
z=0.5
Aa=0.1
Ab=0.2
Ka=0.6
Kb=0.7
cAa=0
cAb=0
cKa=0
cKb=0
m=2
ra=0.05
rb=0.05
a0=0.4
b0=0.4

panel1res=allee(timeSteps=200,z=0,a0=a0,b0=b0,ra=ra,rb=rb,Ka=Ka,Kb=Kb,Aa=Aa,Ab=Ab,cAa=cAa,cAb=cAb,cKa=cKa,cKb=cKb)
panel2res=allee(timeSteps=200,z=0.3,a0=a0,b0=b0,ra=ra,rb=rb,Ka=Ka,Kb=Kb,Aa=Aa,Ab=Ab,cAa=cAa,cAb=cAb,cKa=cKa,cKb=cKb)
panel3res=allee(timeSteps=200,z=0.6,a0=a0,b0=b0,ra=ra,rb=rb,Ka=Ka,Kb=Kb,Aa=Aa,Ab=Ab,cAa=cAa,cAb=cAb,cKa=cKa,cKb=cKb)

par(mfrow=c(1,3))
plot(panel1res$a,type="l",ylim=c(0,0.9),col="indianred",lwd=2,ylab="Population Size",xlab="Time", cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5)
axis(side=4,at=c(Ka,Kb),labels=c(expression(K[a]),expression(K[b])),hadj=0.5,las=2, cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5)
abline(h=c(Ka,Kb),lty=2)
lines(panel1res$b,col="royalblue",lwd=2)
legend("bottomright",legend=c("a","b"),lty=1,lwd=2,col=c("indianred","royalblue"), cex=1.5)

plot(panel2res$a,type="l",ylim=c(0,0.9),col="indianred",lwd=2,ylab="Population Size",xlab="Time", cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5)
axis(side=4,at=c(Ka,Kb),labels=c(expression(K[a]),expression(K[b])),hadj=0.5,las=2, cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5)
abline(h=c(Ka,Kb),lty=2)
lines(panel2res$b,col="royalblue",lwd=2)

plot(panel3res$a,type="l",ylim=c(0,0.9),col="indianred",lwd=2,ylab="Population Size",xlab="Time", cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5)
axis(side=4,at=c(Ka,Kb),labels=c(expression(K[a]),expression(K[b])),hadj=0.5,las=2, cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5)
abline(h=c(Ka,Kb),lty=2)
lines(panel3res$b,col="royalblue",lwd=2)



