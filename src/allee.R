
allee<-function(r.n=0.005,r.m=0.005,ini.m=1001,ini.n=1001,Am=1000,Km=2000,An=1000,Kn=2000,z=0.7,timeSteps=2000,b=2,storeFinalOnly=FALSE,cAm=0,cAn=0,cKn=0,cKm=0)
{
# Create Output Vectors:
    m<-numeric(length=timeSteps)
    n<-numeric(length=timeSteps)
    m[1]=ini.m
    n[1]=ini.n

# Define DELTA
    DELTA=max(r.n*((Am-Km)^2/(4*Am*Km)),r.m*((An-Kn)^2/(4*An*Kn)))
# Compute Simulation
for (t in 2:timeSteps)
    {

     #intrinsic growth rates
     Rm=r.m*m[t-1]*((m[t-1]-cAn*n[t-1])/Am-1)*(1-(m[t-1]+cKn*n[t-1])/Km)
     Rn=r.n*n[t-1]*((n[t-1]-cAm*m[t-1])/An-1)*(1-(n[t-1]+cKm*m[t-1])/Kn)

#transmission rates
     if (abs(Rm-Rn)>=(b*DELTA)) {zeta=z}
     if (abs(Rm-Rn)<(b*DELTA)) {zeta=z*abs(Rm-Rn)/(b*DELTA)}

#switch function
     if (Rm==Rn) {C=0} #No transmission
     if(Rm>Rn) {C=zeta*(n[t-1]+ Rn)} # The proportion moving is a function of the updated population size
     if (Rn>Rm) {C=-zeta*(m[t-1]+ Rm)} # The proportion moving is a function of the updated population size
                 
#transmission(migration)
# This is essentially population of the previous steps + population increasing through reproduction, and population moving after transmission (post-reproduction).      
     
     m[t]=m[t-1]+ Rm + C
     n[t]=n[t-1]+ Rn - C

 }
    if (storeFinalOnly==FALSE)
        {return(list(m=m,n=n))}
    if (storeFinalOnly==TRUE)
        {return(c(m=m[t],n=n[t]))}    
}
