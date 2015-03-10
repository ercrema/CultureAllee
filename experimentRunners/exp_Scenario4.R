source("./allee.R")
source("./basin.R")

#Scenario 4

Km=0.7
Kn=1
An=0.5
Am=0.2
z=0
r.n=0.005
r.m=0.005
x.lim=c(0,1.2)
y.lim=c(0,1.2)
cAn=0.2
cAm=-0.2
cKn=0.2
cKm=-0.2

print("Part 1 out of 6")
z=0
res000=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=50000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Part 2 out of 6")
z=0.01
res001=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=50000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Part 3 out of 6")
z=0.05
res005=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=50000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Part 4 out of 6")
z=0.1
res01=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=50000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Part 5 out of 6")
z=0.2
res02=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=50000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Part 6 out of 6")
z=0.5
res05=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=50000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)

save.image("./scenario4.RData")
