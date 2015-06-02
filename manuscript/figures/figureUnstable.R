
library(ggplot2)

source("../../src/alleeIGC.R")
source("../../src/basin.R")
source("../../src/utility.R")

# lambda=0.9, z=0.4
load('../../experimentMN3/05_unstability/result_003.Rdata')

pdf('figureUnstable1.pdf', width=8, height=8)

basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="",xlab="a",ylab="b")
abline(h=c(An,Kn),lty=2,col="white")
abline(v=c(Am,Km),lty=2,col="white")
axis(side=3,at=c(Am,Km),labels=c(expression(A[a]),expression(K[a])),padj=0.8)
axis(side=4,at=c(An,Kn),labels=c(expression(A[b]),expression(K[b])),hadj=0.5,las=2)
points(x=c(0.4,0.39), y=c(1.0, 0.99), pch=20)

# text with buffer    
text(0.41, 1.01,labels="k",col='black',font=2, cex=1)
text(0.38,0.98,labels="j",col='black',font=2, cex=1)

dev.off()

stable <- allee(ini.m=0.39,ini.n=0.99,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)
unstable <- allee(ini.m=0.4,ini.n=1.0,Am=Am,Km=Km,An=An,Kn=Kn,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,r.m=r.m,r.n=r.n,z=z)

stableA <- data.frame(step=1:length(stable$m), pop=stable$m, strategy='a', equilibrium='j')
stableB <- data.frame(step=1:length(stable$n), pop=stable$n, strategy='b', equilibrium='j')
unstableA <- data.frame(step=1:length(unstable$m), pop=unstable$m, strategy='a', equilibrium='k')
unstableB <- data.frame(step=1:length(unstable$n), pop=unstable$n, strategy='b', equilibrium='k')

trajectories <- rbind(stableA, stableB, unstableA, unstableB)

pdf('figureUnstable2.pdf', width=6, height=6)

ggplot(subset(trajectories, step<1501), aes(x=step, y=pop, col=strategy)) + geom_line() + scale_color_manual(values=c('red','blue')) + facet_wrap(~equilibrium, nrow=2) + theme(legend.position='none') + xlab('time (steps)') + ylab('')

dev.off()


