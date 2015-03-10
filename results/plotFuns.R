setwd("~/Google Drive/alleepaper/NewSRC")
source("./allee.R")
source("./basin.R")




#Scenario 1 (no transmission)
load("/Users/enryu/Google Drive/alleepaper/NewSRC/results/scenario1.RData")
par(mfrow=c(2,3))
basinPlot(res000,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res001,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.01",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res005,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.05",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res01,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.1",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res02,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.2",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res05,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.5",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)


dev.print(device=pdf,"scenario1.pdf")




#Scenario 2 (overlap)
load("/Users/enryu/Google Drive/alleepaper/NewSRC/results/scenario2.RData")
par(mfrow=c(2,3))
basinPlot(res000,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res001,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.01",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res005,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.05",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res01,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.1",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res02,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.2",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res05,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.5",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)


dev.print(device=pdf,"scenario2.pdf")




layout(matrix(c(1,1,2,3),2,2))
basinPlot(res05,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.5",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
trajPlot(ini.m=0.4,ini.n=0.6,z=0.5,r.n=r.n,r.m=r.m,Am=Am,Km=Km,An=An,Kn=Kn,timeSteps=700)
tmp=allee(ini.m=0.4,ini.n=0.6,z=0.5,r.n=r.n,r.m=r.m,Am=Am,Km=Km,An=An,Kn=Kn,timeSteps=700)
par(mar=c(4,4,3,1))
plot(tmp$m,type="l",xlab="time",ylab="m")
plot(tmp$n,type="l",xlab="time",ylab="n")
dev.print(device=pdf,"scenario2b.pdf")





#Scenario 3 (internal overlap)
load("/Users/enryu/Google Drive/alleepaper/NewSRC/results/scenario3.RData")
par(mfrow=c(2,3))
basinPlot(res000,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res001,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.01",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res005,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.05",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res01,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.1",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res02,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.2",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res05,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.5",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)


dev.print(device=pdf,"scenario3.pdf")








#Scenario 4 (overlap with competition)
load("/Users/enryu/Google Drive/alleepaper/NewSRC/results/scenario4.RData")
par(mfrow=c(2,3))
basinPlot(res000,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res001,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.01",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res005,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.05",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res01,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.1",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res02,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.2",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res05,Am=Am,Km=Km,An=An,Kn=Kn,main="z=0.5",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)


dev.print(device=pdf,"scenario4.pdf")
