#Utility Functions#

#Calculate Expected m and n stable attractor node for m>0 and n>0 (close to carrying capacity):

ExpStableNode=function(Kn,Km,cKn,cKm)
    {
         m=(Km-cKn*Kn)/(1-cKn*cKm)
         n=(cKm*Km-Kn)/(cKm*cKn-1)
         return(list(m=m,n=n))
    }

#Calculate Expected m and n unstable attractor node for m>0 and n>0 (close to Allee Effect):

ExpUnStableNode=function(An,Am,cAn,cAm)
    {
         m=(cKn*An+Am)/(1-cAn*cAm)
         n=(cKm*Am+An)/(1-cAn*cAm)
         return(list(m=mExp,n=nExp))
    }




#Calculate parameter g, that equalises the max fitness of the two strategies
EqualiseMaxGrowthRate=function(An,Am,Kn,Km)
{
    g=(((Am/Km+1)/2/(Am/Km)-1)*(1-((Am/Km+1)/2)))/
        (((An/Kn+1)/2/(An/Kn)-1)*(1-((An/Kn+1)/2)))
    return(g)
    # Rm=Rn*g to make the two max intrisic growth rates equal
}

