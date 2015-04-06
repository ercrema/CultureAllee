
allee<-function(r.n=0.005,r.m=0.005,ini.m=0.6,ini.n=0.8,Am=0.2,Km=0.7,An=0.5,Kn=1,z=0,timeSteps=2000,b=2,storeFinalOnly=FALSE,cAm=-0.2,cAn=0.2,cKn=0.2,cKm=-0.2)
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
     Rm=r.m*((m[t-1]-cAn*n[t-1])/Am-1)*(1-(m[t-1]+cKn*n[t-1])/Km)
     Rn=r.n*((n[t-1]-cAm*m[t-1])/An-1)*(1-(n[t-1]+cKm*m[t-1])/Kn)
     
#transmission rates

     if (m[t-1]>0&n[t-1]>0)
         {
             if (abs(Rm-Rn)>=(b*DELTA)) {zeta=z}
             if (abs(Rm-Rn)<(b*DELTA)) {zeta=z*abs(Rm-Rn)/(b*DELTA)}
         }
     else
         {
             zeta=0
         }
     
#switch function
     if (Rm==Rn) {C=0} #No transmission
     if(Rm>Rn) {C=zeta*(n[t-1]+ Rn*n[t-1])} # The proportion moving is a function of the updated population size
     if (Rn>Rm) {C=-zeta*(m[t-1]+ Rm*m[t-1])} # The proportion moving is a function of the updated population size
                 
#transmission(migration)
# This is essentially population of the previous steps + population increasing through reproduction, and population moving after transmission (post-reproduction).      
     
     m[t]=m[t-1]+ Rm*m[t-1] + C
     n[t]=n[t-1]+ Rn*n[t-1] - C

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
