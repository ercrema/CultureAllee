source("./src/allee.R")
source("./src/basin.R")
source("./src/utility.R")

#Scenario 1

Km=1
Kn=1
An=0.2
Am=0.2
z=0
r.n=0.005
r.m=EqualiseMaxGrowthRate(An=An,Am=Am,Kn=Kn,Km=Km)*r.n
x.lim=c(0,1.2)
y.lim=c(0,1.2)
cAn=0
cAm=0
cKn=0
cKm=0

print("Part 1 out of 6")
z=0
res000=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Part 2 out of 6")
z=0.01
res001=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Part 3 out of 6")
z=0.05
res005=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Part 4 out of 6")
z=0.1
res01=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Part 5 out of 6")
z=0.2
res02=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Part 6 out of 6")
z=0.5
res05=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)

save.image("./scenario1.RData")
