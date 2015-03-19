source("./src/allee.R")
source("./src/basin.R")
source("./src/utility.R")




#Scenario 1 (no transmission)
load("./results/data/scenario1.RData")
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


dev.print(device=pdf,"./results/scenario1.pdf")
dev.print(device=png,"./results/scenario1.png",width=650,height=500)






#Scenario 2 (overlap)
load("./results/data/scenario2.RData")
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


dev.print(device=pdf,"./results/scenario2.pdf")
dev.print(device=png,"./results/scenario2.png",width=650,height=500)


basinPlot(res02,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.2",cex.lab=1.4,cex.main=1.8)

trajPlot(ini.m=0.7950238,ini.n=0.9528006,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,timeSteps=10000)
basePlot(ini.m=0.7950238,ini.n=0.9528006,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,timeSteps=50000)






#Scenario 3 (internal overlap)
load("./results/data/scenario3.RData")
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


dev.print(device=pdf,"./results/scenario3.pdf")
dev.print(device=png,"./results/scenario3.png",width=650,height=500)




#Scenario 4 (overlap with competition)
load("./results/data/scenario4.RData")
source("./src/basin.R")

par(mfrow=c(2,3))
basinPlot(res000,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
points(ExpStableNode(Kn,Km,cKn,cKm)$m,ExpStableNode(Kn,Km,cKn,cKm)$n,pch=20)

basinPlot(res001,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.01",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
points(ExpStableNode(Kn,Km,cKn,cKm)$m,ExpStableNode(Kn,Km,cKn,cKm)$n,pch=20)

basinPlot(res005,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.05",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
points(ExpStableNode(Kn,Km,cKn,cKm)$m,ExpStableNode(Kn,Km,cKn,cKm)$n,pch=20)

basinPlot(res01,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.1",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
points(ExpStableNode(Kn,Km,cKn,cKm)$m,ExpStableNode(Kn,Km,cKn,cKm)$n,pch=20)

basinPlot(res02,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.2",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
points(ExpStableNode(Kn,Km,cKn,cKm)$m,ExpStableNode(Kn,Km,cKn,cKm)$n,pch=20)

basinPlot(res05,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.5",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
points(ExpStableNode(Kn,Km,cKn,cKm)$m,ExpStableNode(Kn,Km,cKn,cKm)$n,pch=20)


dev.print(device=pdf,"./results/scenario4.pdf")
dev.print(device=png,"./results/scenario4.png",width=650,height=500)
