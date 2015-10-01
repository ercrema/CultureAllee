
allee<-function(rb=0.005,ra=0.005,a0=0.6,b0=0.8,Aa=0.2,Ka=0.7,Ab=0.5,Kb=1,z=0,timeSteps=2000,m=2,cAa=0,cAb=0,cKb=0,cKa=0)
{
# Create Output Vectors:
    a<-numeric(length=timeSteps)
    b<-numeric(length=timeSteps)
    a[1]=a0
    b[1]=b0

# Define DELTA
    DELTA=max(rb*((Aa-Ka)^2/(4*Aa*Ka)),ra*((Ab-Kb)^2/(4*Ab*Kb)))
# Compute Simulation
for (t in 2:timeSteps)
    {

     #intrinsic growth rates
     Ra=ra*((a[t-1]-cAb*b[t-1])/Aa-1)*(1-(a[t-1]+cKb*b[t-1])/Ka)
     Rb=rb*((b[t-1]-cAa*a[t-1])/Ab-1)*(1-(b[t-1]+cKa*a[t-1])/Kb)
     
#transmission rates

     if (a[t-1]>0|b[t-1]>0)
         {
             if (abs(Ra-Rb)>=(m*DELTA)) {zeta=z}
             if (abs(Ra-Rb)<(m*DELTA)) {zeta=z*abs(Ra-Rb)/(m*DELTA)}
         }
     else
         {
             zeta=0
         }
     
#switch function
     if (Ra==Rb) {C=0} #No transmission
     if(Ra>Rb) {C=zeta*(b[t-1]+ Rb*b[t-1])} # The proportion moving is a function of the updated population size
     if (Rb>Ra) {C=-zeta*(a[t-1]+ Ra*a[t-1])} # The proportion moving is a function of the updated population size
                 
#transmission(migration)
# This is essentially population of the previous steps + population increasing through reproduction, and population moving after transmission (post-reproduction).      
     
     a[t]=a[t-1]+ Ra*a[t-1] + C
     b[t]=b[t-1]+ Rb*b[t-1] - C

# This is to avoid unecessary computational time     
     if((abs(a[t]-a[t-1])==0)&(abs(b[t]-b[t-1])==0))
         {
             #print(t)
             a[t:timeSteps]=a[t]
             b[t:timeSteps]=b[t]
             break()
         }
# Avoid Negative Computation
     if (a[t]<0){a[t]=0}
     if (b[t]<0){b[t]=0}
 }

      return(list(a=a,b=b))    
}


#Calculate parameter g, that equalises the max fitness of the two strategies
EqualiseMaxGrowthRate=function(Ab,Aa,Kb,Ka)
{
    rho=(Ab*Kb*(Ka-Aa)^2)/(Aa*Ka*(Ab-Kb)^2)
    return(rho)
    # Ra=Rb*rho to make the two max intrisic growth rates equal
}


