
allee<-function(r.n=0.005,r.m=0.005,ini.m=0.6,ini.n=0.8,Am=0.2,Km=0.7,An=0.5,Kn=1,z=0,timeSteps=2000,b=2,storeFinalOnly=FALSE,cAm=-0.2,cAn=0.2,cKn=0.2,cKm=-0.2)
{
# Create Output Vectors:
    m<-numeric(length=timeSteps)
    n<-numeric(length=timeSteps)
    m[1]=ini.m
    n[1]=ini.n

# Define DELTA
    maxGRm.m=1/3*(Am+Km+sqrt(Am^2-Am*Km+Km^2))
    maxGRn.n=1/3*(An+Kn+sqrt(An^2-An*Kn+Kn^2))

    maxRm=r.m*maxGRm.m*(maxGRm.m/Am-1)*(1-maxGRm.m/Km)
    maxRn=r.n*maxGRn.n*(maxGRn.n/An-1)*(1-maxGRn.n/Kn)
        
    DELTA=max(maxRm,maxRn)
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

# This is to avoid unecessary computational time     
     if((abs(m[t]-m[t-1])==0)&(abs(n[t]-n[t-1])==0))
         {
             #print(t)
             m[t:timeSteps]=m[t]
             n[t:timeSteps]=n[t]
             break()
         }
 }

    
    if (storeFinalOnly==FALSE)
        {return(list(m=m,n=n))}
    if (storeFinalOnly==TRUE)
        {return(c(m=m[t],n=n[t]))}    
}
