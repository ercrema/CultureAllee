source("./src/alleeIGC.R")
source("./src/basin.R")
source("./src/utility.R")


#1) Basin Plot with trajectory showing the relationship to time-series
#2) Basin plot with no, low, and high z to show the idea that basin changes in shape and size
#3) overlap analysis on the change of size
#4) comparison of time-series of the same location (same initial condition) but with different values of z to illustrate large scale dynamics from small differences in mode of transmission
#5) effect of competition (one with, one without, with z>0)
#

#Figure 1: (Basin Plot with trajectory showing the relationship to time-series)

lambda=0.3
z=0.05
Am=0.1
An=Am+lambda
Km=0.6
Kn=Km+lambda
cAn=0
cAm=0
cKn=0
cKm=0
r.n=0.05
r.m=r.n
x.lim=c(0,1.2)
y.lim=c(0,1.2)


print("Executing Figure1 Basin....")
figure1=basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=5)


save(z,lambda,Am,An,Km,Kn,cAn,cAm,cKn,cKm,r.n,r.m,x.lim,y.lim,figure1,file="figure1.RData")





#Example Plot Functions
#basinPlot(res=figure1,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm)
#abline(h=c(An,Kn),lty=2,col="white")
#abline(v=c(Am,Km),lty=2,col="white")
#axis(side=3,at=c(Am,Km),labels=c(expression(A[m]),expression(K[m])),padj=0.8)
#axis(side=4,at=c(An,Kn),labels=c(expression(A[n]),expression(K[n])),hadj=0.5,las=2)


#Figure 2: Basin plot with no, low, and high z to show the idea that basin changes in shape and size


lambda=0.35
z=0
Am=0.1
An=Am+lambda
Km=0.6
Kn=Km+lambda
cAn=0
cAm=0
cKn=0
cKm=0
r.n=0.05
r.m=r.n
x.lim=c(0,1.2)
y.lim=c(0,1.2)

print("Executing Figure2a Basin....")
z=0
figure2a=basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=5)

save(z,lambda,Am,An,Km,Kn,cAn,cAm,cKn,cKm,r.n,r.m,x.lim,y.lim,figure2a,file="figure2a.RData")


print("Executing Figure2b Basin....")
z=0.05
figure2b=basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=5)

save(z,lambda,Am,An,Km,Kn,cAn,cAm,cKn,cKm,r.n,r.m,x.lim,y.lim,figure2b,file="figure2b.RData")


print("Executing Figure2c Basin....")
z=0.3
figure2c=basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=5)

save(z,lambda,Am,An,Km,Kn,cAn,cAm,cKn,cKm,r.n,r.m,x.lim,y.lim,figure2c,file="figure2c.RData")


#Figure 3: Overlap analysis from Legion

#Figure 4: comparison of time-series of the same location (same initial condition) but with different values of z to illustrate large scale dynamics from small differences in mode of transmission

# reuse plot above?



#Figure 5: 


lambda=0.35
z=0.3
Am=0.1
An=Am+lambda
Km=0.6
Kn=Km+lambda
cAn=0
cAm=0
cKn=0
cKm=0
r.n=0.05
r.m=r.n
x.lim=c(0,1.2)
y.lim=c(0,1.2)

print("Executing Figure5a Basin....")
figure5a=basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=5)

save(z,lambda,Am,An,Km,Kn,cAn,cAm,cKn,cKm,r.n,r.m,x.lim,y.lim,figure5a,file="figure5a.RData")


cAn=0.25
cAm=-0.25
cKn=0.25
cKm=-0.25

print("Executing Figure5b Basin....")
figure5b=basin(x.lim=x.lim,y.lim=x.lim,points=150,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=TRUE,multicore=TRUE,cores=5)

save(z,lambda,Am,An,Km,Kn,cAn,cAm,cKn,cKm,r.n,r.m,x.lim,y.lim,figure5b,file="figure5b.RData")
