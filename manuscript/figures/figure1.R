
allee<-function(r,A=0.2,K=1,start=0.21,timesteps=10000)
{
	pop<-numeric(length= timesteps)
	pop[1]=start
	for (t in 2: timesteps)
	{
		pop[t]=pop[t-1]+pop[t-1]*r*(1-pop[t-1]/A)*(pop[t-1]/K-1)
	}
	
	return(pop[(timesteps-499):timesteps])	
}


bifurcationPlot<-function(rSEQ,A,K,start,...)
    {
        plot(x=1,y=1,xlim=c(min(rSEQ),max(rSEQ)),type="n",...)
        for (r in rSEQ)
            {
                points(x=rep(r,500),y=allee(r=r,A=A,K=K,start=start),pch=20,cex=0.5)
            }
    }

par(mar=c(5, 6, 4, 2) + 2)
bifurcationPlot(rSEQ=seq(0.001,1.1,0.001),A=0.2,K=0.8,start=0.21,ylim=c(0.2,1),las=2,cex.lab=6,cex.axis=6,xlab="",ylab="")
mtext(side=1,expression(r[x]),line=6,cex=6)
mtext(side=2,"x",line=6,cex=6)

#axis(side=4,at=0.8,labels=expression(K[x]),las=3,cex.axis=3)
dev.print(device=jpeg,"~/github/CultureAllee/manuscript/figures/figure1.jpg",width=4000,height=3000,pointsize = 30)
