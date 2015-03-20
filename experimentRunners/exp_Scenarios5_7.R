source("./src/allee.R")
source("./src/basin.R")
source("./src/utility.R")

#Scenario 5

Km=0.7
Kn=1
An=0.5
Am=0.2
z=0
r.n=0.005
r.m=r.n
x.lim=c(0,1.2)
y.lim=c(0,1.2)
cAn=0
cAm=0
cKn=0
cKm=0

print("Scenario5: Part 1 out of 6")
z=0
res000=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario5: Part 2 out of 6")
z=0.01
res001=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario5: Part 3 out of 6")
z=0.05
res005=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario5: Part 4 out of 6")
z=0.1
res01=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario5: Part 5 out of 6")
z=0.2
res02=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario5: Part 6 out of 6")
z=0.5
res05=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)

save.image("./scenario5.RData")


#Scenario 6

Km=0.7
Kn=1
An=0.2
Am=0.5
z=0
r.n=0.005
r.m=r.n
x.lim=c(0,1.2)
y.lim=c(0,1.2)
cAn=0
cAm=0
cKn=0
cKm=0


print("Scenario6: Part 1 out of 6")
z=0
res000=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=500000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario6: Part 2 out of 6")
z=0.01
res001=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=500000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario6: Part 3 out of 6")
z=0.05
res005=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=500000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario6: Part 4 out of 6")
z=0.1
res01=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=500000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario6: Part 5 out of 6")
z=0.2
res02=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=500000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario6: Part 6 out of 6")
z=0.5
res05=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=500000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
save.image("./scenario6.RData")


#Scenario 7

Km=0.7
Kn=1
An=0.5
Am=0.2
z=0
r.n=0.005
r.m=r.n
#Note in this case we are ignoring the competition terms
x.lim=c(0,1.2)
y.lim=c(0,1.2)
cAn=0.2
cAm=-0.2
cKn=0.2
cKm=-0.2


print("Scenario7: Part 1 out of 6")
z=0
res000=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario7: Part 2 out of 6")
z=0.01
res001=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario7: Part 3 out of 6")
z=0.05
res005=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario7: Part 4 out of 6")
z=0.1
res01=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario7: Part 5 out of 6")
z=0.2
res02=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)
print("Scenario7: Part 6 out of 6")
z=0.5
res05=basin(x.lim=x.lim,y.lim=x.lim,cores=5,points=40,timeSteps=100000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE)

save.image("./scenario7.RData")
