basin<-function(x.lim,y.lim,points,multicore=TRUE,r.n=0.005,r.m=0.005,Am=1000,Km=2000,An=1000,Kn=2000,z=0.7,timeSteps=2000,b=2,cores=1,cAn=0,cAm=0,cKn=0,cKm=0,verbose=TRUE)
{
    require(utils)
    require(foreach)
    require(doParallel)

x <- seq(from = x.lim[1], to = x.lim[2], length = points)
y <- seq(from = y.lim[1], to = y.lim[2], length = points)
coordgrid=expand.grid(x,y)
res=data.frame(ini.m=coordgrid[,1],ini.n=coordgrid[,2],m.final=NA,n.final=NA)
    if (verbose==TRUE)
        {pb <- txtProgressBar(min = 1, max = nrow(res), style=3)}

if (multicore==TRUE)
    {
        registerDoParallel(cores=cores)
        tmp=foreach(i=1:nrow(res), .combine=rbind) %dopar%
        {
            if (verbose==TRUE) {setTxtProgressBar(pb, i)}
            allee(ini.n=res$ini.n[i],ini.m=res$ini.m[i],
               r.n=r.n,r.m=r.m,Am=Am,Km=Km,An=An,Kn=Kn,
                  z=z,timeSteps=timeSteps,b=b,
                  cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,
                  storeFinalOnly=TRUE)}
        res[,3:4]=tmp
    }

if (multicore==FALSE)
    {
        for (i in 1:nrow(res))
            {
            if (verbose==TRUE) {setTxtProgressBar(pb, i)}
             res[i,3:4]= allee(ini.n=res$ini.n[i],ini.m=res$ini.m[i],
               r.n=r.n,r.m=r.m,Am=Am,Km=Km,An=An,Kn=Kn,
                  z=z,timeSteps=timeSteps,b=b,
                  cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,
                  storeFinalOnly=TRUE)
            }
    }
            if (verbose==TRUE) {close(pb)}
    
return(res)
}

basinPlot<-function(res,Am=1000,Km=2000,An=1000,Kn=2000,...)
    {
        require(raster)
      
        #deal with floating point arithmethic problem#
        
        res$m.final[which(as.logical(sapply(res$m.final,all.equal,target=Km,USE.NAMES=F,simplify=TRUE)))]=Km
        res$n.final[which(as.logical(sapply(res$n.final,all.equal,target=Kn,USE.NAMES=F,simplify=TRUE)))]=Kn
        res$m.final[which(as.logical(sapply(res$m.final,all.equal,target=0,USE.NAMES=F,simplify=TRUE)))]=0
        res$n.final[which(as.logical(sapply(res$n.final,all.equal,target=0,USE.NAMES=F,simplify=TRUE)))]=0

        
        #Set Colour

        #Limit Cycle Colour
        res$col=1
        # E1: Coexistence
        res$col[which(res$m.final==Km&res$n.final==Kn)]=2


        # E2m: Dominance m
        res$col[which(res$m.final==Km&res$n.final==0)]=3   
        # E2n: Dominance n
        res$col[which(res$m.final==0&res$n.final==Kn)]=4      
        # E3: Extinction n
        res$col[which(res$m.final==0&res$n.final==0)]=5  
        #plot(res[,1],res[,2],col=res$col,x.lab="m",y.lab="n",pch=15)
        tmp=rasterFromXYZ(res[,c(1,2,5)])
        image(tmp,col=c("orange","darkgreen","indianred","royalblue","lightgrey"),zlim=c(1,5),xlab="m",ylab="n",...)
    }


trajPlot<-function(ini.m=1001,ini.n=1001,...)
    {
        tmp<-allee(ini.m=ini.m,ini.n=ini.n ,...)
        lines(tmp$m,tmp$n,lty=1,lwd=1)
        points(x=ini.m,y=ini.n,pch=20)
    }









