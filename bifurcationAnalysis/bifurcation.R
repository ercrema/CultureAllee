
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
        plot(x=1,y=1,xlim=c(min(rSEQ),max(rSEQ)),type="n",ylab="x",xlab=expression(r[x]),...)
        for (r in rSEQ)
            {
                points(x=rep(r,500),y=allee(r=r,A=A,K=K,start=start),pch=20,cex=0.5)
            }
    }


                                        # Figure 1 #


par(mfcol=c(3,3))
bifurcationPlot(rSEQ=seq(0.01,0.8,0.005),A=0.2,K=1,start=0.21,ylim=c(0.2,1.2))
title("A=0.2; K=1; Initial x = 0.21")
bifurcationPlot(rSEQ=seq(0.01,0.8,0.005),A=0.2,K=1,start=0.8,ylim=c(0.2,1.2))
title("A=0.2; K=1; Initial x = 0.8")
bifurcationPlot(rSEQ=seq(0.01,0.8,0.005),A=0.2,K=1,start=1.1,ylim=c(0.2,1.2))
title("A=0.2; K=1; Initial x = 1.1")
####
bifurcationPlot(rSEQ=seq(0.9,2,0.005),A=0.4,K=1,start=0.41,ylim=c(0.2,1.2))
title("A=0.4; K=1; Initial x = 0.41")
bifurcationPlot(rSEQ=seq(0.9,2,0.005),A=0.4,K=1,start=0.8,ylim=c(0.2,1.2))
title("A=0.4; K=1; Initial x = 0.8")
bifurcationPlot(rSEQ=seq(0.9,2,0.005),A=0.4,K=1,start=1.1,ylim=c(0.2,1.2))
title("A=0.4; K=1; Initial x = 1.1")
####
bifurcationPlot(rSEQ=seq(0.2,1.2,0.005),A=0.4,K=1.5,start=0.41,ylim=c(0.2,2))
title("A=0.4; K=1.5; Initial x = 0.41")
bifurcationPlot(rSEQ=seq(0.2,1.2,0.005),A=0.4,K=1.5,start=0.8,ylim=c(0.2,2))
title("A=0.4; K=1.5; Initial x = 0.8")
bifurcationPlot(rSEQ=seq(0.2,1.2,0.005),A=0.4,K=1.5,start=1.7,ylim=c(0.2,2))
title("A=0.4; K=1.5; Initial x = 1.7")
dev.print(device=jpeg,"./CultureAllee/bifurcationAnalysis/figure1.jpg",width=1000,height=1000)

                                        # Figure 2 #

lambda=seq(0,0.5,0.01)
Rseq=seq(0.005,3,0.001)
bifpoint=numeric(length(lambda))

for (L in 1:length(lambda))
{
    condition=TRUE
    count=1
    print(L)
    rused=NA
    while(condition==TRUE)
        {
            rused=Rseq[count]
            condition=all.equal(rep(0.6+lambda[L],501),allee(r=rused,A=0.1+lambda[L],K=0.6+lambda[L],start=0.1+lambda[L]+0.1))
            count=count+1
        }
    bifpoint[L]=rused
    print(paste("bifpoint=",rused))
}




plot(lambda,bifpoint,xlab=expression(lambda),ylab="r",type="l",ylim=c(0,3))
polygon(c(lambda,rev(lambda)),c(bifpoint,rep(0,length(bifpoint))),col=rgb(0,0,1,0.1),border=NA)
polygon(c(lambda,rev(lambda)),c(bifpoint,rep(10,length(bifpoint))),col=rgb(1,0,0,0.1),border=NA)
abline(h=0.05,lty=2)
dev.print(device=pdf,"./CultureAllee/bifurcationAnalysis/figure2.pdf")

                                        # Figure 3 #
bifurcationPlot(rSEQ=seq(0.0001,0.01,0.000025),A=0.001,K=0.5,start=0.1,ylim=c(0,0.6))
dev.print(device=jpeg,"./CultureAllee/bifurcationAnalysis/figure3.jpg",width=400,height=300)
