source("./src/allee.R")
source("./src/basin.R")
source("./src/utility.R")




#Scenario 1 (no transmission)
load("./results/data/scenario1.RData")
par(mfrow=c(2,3))
basinPlot(res000,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res001,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.01",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res005,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.05",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res01,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.1",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res02,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.2",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res05,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.5",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)


dev.print(device=pdf,"./results/preliminaryFigures/scenario1.pdf")
dev.print(device=png,"./results/preliminaryFigures/scenario1.png",width=650,height=500)






#Scenario 2 (overlap)
load("./results/data/scenario2.RData")
par(mfrow=c(2,3))
basinPlot(res000,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res001,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.01",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res005,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.05",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res01,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.1",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res02,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.2",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res05,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.5",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)


dev.print(device=pdf,"./results/preliminaryFigures/scenario2.pdf")
dev.print(device=png,"./results/preliminaryFigures/scenario2.png",width=650,height=500)





#Scenario 3 (internal overlap)
load("./results/data/scenario3.RData")
par(mfrow=c(2,3))
basinPlot(res000,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res001,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.01",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res005,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.05",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res01,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.1",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res02,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.2",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)
basinPlot(res05,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.5",cex.lab=1.4,cex.main=1.8)
abline(h=c(An,Kn),lty=2)
abline(v=c(Am,Km),lty=2)


#
#
#z=0.2
#basinPlot(res005,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main="z=0.2",cex.lab=1.4,cex.main=1.8)
#
#trajPlot(ini.m=0.8,ini.n=0.8,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,timeSteps=100000)
#basePlot(ini.m=0.8,ini.n=0.8,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,timeSteps=50000)
#allee(ini.m=0.8,ini.n=0.8,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,timeSteps=100000,storeFinalOnly=TRUE)
#

dev.print(device=pdf,"./results/preliminaryFigures/scenario3.pdf")
dev.print(device=png,"./results/preliminaryFigures/scenario3.png",width=650,height=500)




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


dev.print(device=pdf,"./results/preliminaryFigures/scenario4.pdf")
dev.print(device=png,"./results/preliminaryFigures/scenario4.png",width=650,height=500)





#Scenario 5 (overlap with different growth rates)
load("./results/data/scenario5.RData")
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


dev.print(device=pdf,"./results/preliminaryFigures/scenario5.pdf")
dev.print(device=png,"./results/preliminaryFigures/scenario5.png",width=650,height=500)



#Scenario 6 (inclusive with same growth rate)
load("./results/data/scenario6.RData")
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


dev.print(device=pdf,"./results/preliminaryFigures/scenario6.pdf")
dev.print(device=png,"./results/preliminaryFigures/scenario6.png",width=650,height=500)





#Scenario 7 (overlap with same growth rate and competition)
load("./results/data/scenario7.RData")
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


dev.print(device=pdf,"./results/preliminaryFigures/scenario7.pdf")
dev.print(device=png,"./results/preliminaryFigures/scenario7.png",width=650,height=500)
