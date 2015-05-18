basin<-function(x.lim,y.lim,points,multicore=TRUE,r.n,r.m,Am,Km,An,Kn,z,timeSteps,b=2,cores=1,cAn,cAm,cKn,cKm,verbose=TRUE)
{


    x <- seq(from = x.lim[1], to = x.lim[2], length = points)
    y <- seq(from = y.lim[1], to = y.lim[2], length = points)
    coordgrid=expand.grid(x,y)
    res=data.frame(ini.m=coordgrid[,1],ini.n=coordgrid[,2],m.final=NA,n.final=NA)
    
    if (verbose==TRUE)
        {pb <- txtProgressBar(min = 1, max = nrow(res), style=3)}

    if (multicore==TRUE)
        {
            require(utils)
            require(foreach)
            require(doParallel)
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

basinPlot<-function(res,Am,Km,An,Kn,cKn,cKm,...)
    {
        require(raster)

        #Identify Stable Attractor Node
        Em=ExpStableNode(Kn,Km,cKn,cKm)$m
        En=ExpStableNode(Kn,Km,cKn,cKm)$n
        
        #deal with floating point arithmethic problem#

        
        res$m.final[which(as.logical(sapply(res$m.final,all.equal,target=Km,USE.NAMES=F,simplify=TRUE)))]=Km
        res$n.final[which(as.logical(sapply(res$n.final,all.equal,target=Kn,USE.NAMES=F,simplify=TRUE)))]=Kn
        res$m.final[which(as.logical(sapply(res$m.final,all.equal,target=Em,USE.NAMES=F,simplify=TRUE)))]=Em
        res$n.final[which(as.logical(sapply(res$n.final,all.equal,target=En,USE.NAMES=F,simplify=TRUE)))]=En
        res$m.final[which(as.logical(sapply(res$m.final,all.equal,target=0,USE.NAMES=F,simplify=TRUE)))]=0
        res$n.final[which(as.logical(sapply(res$n.final,all.equal,target=0,USE.NAMES=F,simplify=TRUE)))]=0

        
        #Set Colour

        #Limit Cycle Colour
        res$col=1
        # E1: Coexistence
        res$col[which(res$m.final==Em&res$n.final==En)]=2


        # E2m: Dominance m
        res$col[which(res$m.final==Km&res$n.final==0)]=3   
        # E2n: Dominance n
        res$col[which(res$m.final==0&res$n.final==Kn)]=4      
        # E3: Extinction 
        res$col[which(res$m.final==0&res$n.final==0)]=5  
        #plot(res[,1],res[,2],col=res$col,x.lab="m",y.lab="n",pch=15)
        tmp=rasterFromXYZ(res[,c(1,2,5)])
        image(tmp,col=c("orange","darkgreen","indianred","royalblue","lightgrey"),zlim=c(1,5),...)
    }


trajPlot<-function(ini.m=1001,ini.n=1001,...)
    {
        tmp<-allee(ini.m=ini.m,ini.n=ini.n ,...)
        lines(tmp$m,tmp$n,lty=1,lwd=2)
        points(x=ini.m,y=ini.n,pch=20)
    }

basePlot<-function(...)
    {
        tmp=allee(...)
        plot(tmp$m,type="l",ylim=c(0,max(unlist(tmp))),col="indianred",lwd=2,ylab="Population Size",xlab="Time")
        axis(side=4,at=c(Km,Kn),labels=c(expression(K[m]),expression(K[n])),hadj=0.5,las=2)
        abline(h=c(Km,Kn),lty=2)
        lines(tmp$n,col="royalblue",lwd=2)
        legend("bottomright",legend=c("m","n"),lty=1,lwd=2,col=c("indianred","royalblue"))
    }


basinCount<-function(res)
    {
        #Identify Stable Attractor Node
        Em=ExpStableNode(Kn,Km,cKn,cKm)$m
        En=ExpStableNode(Kn,Km,cKn,cKm)$n
        
        #deal with floating point arithmethic problem#
        res$m.final[which(as.logical(sapply(res$m.final,all.equal,target=Km,USE.NAMES=F,simplify=TRUE)))]=Km
        res$n.final[which(as.logical(sapply(res$n.final,all.equal,target=Kn,USE.NAMES=F,simplify=TRUE)))]=Kn
        res$m.final[which(as.logical(sapply(res$m.final,all.equal,target=Em,USE.NAMES=F,simplify=TRUE)))]=Em
        res$n.final[which(as.logical(sapply(res$n.final,all.equal,target=En,USE.NAMES=F,simplify=TRUE)))]=En
        res$m.final[which(as.logical(sapply(res$m.final,all.equal,target=0,USE.NAMES=F,simplify=TRUE)))]=0
        res$n.final[which(as.logical(sapply(res$n.final,all.equal,target=0,USE.NAMES=F,simplify=TRUE)))]=0

        #Define Classes
        res$class=1 #Default Class (Unstable Equilibria)
        # E1: Stable Coexistence
        res$class[which(res$m.final==Em&res$n.final==En)]=2
        # E2m: Dominance m
        res$class[which(res$m.final==Km&res$n.final==0)]=3   
        # E2n: Dominance n
        res$class[which(res$m.final==0&res$n.final==Kn)]=4      
        # E3: Extinction 
        res$class[which(res$m.final==0&res$n.final==0)]=5

        UE=sum(res$class==1)/nrow(res)
        SE=sum(res$class==2)/nrow(res)
        Sm=sum(res$class==3)/nrow(res)
        Sn=sum(res$class==4)/nrow(res)
        E=sum(res$class==5)/nrow(res)
        
        return(list(UE=UE,SE=SE,Sm=Sm,Sn=Sn,E=E))
    }




