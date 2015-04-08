

data<-read.csv("./CultureAllee/overlapAnalysis/binded.csv",header=F)
data<-data[,-1]
colnames(data)<-c("lambda","z","UE","SE","Sm","Sn","E")


                                        #line plot
par(mfrow=c(2,2))
Zseq=c(0,0.05,0.1,0.25,0.5)
colSEQ=c("black","yellow","orange","red","darkred")
mainTitles=c("Unstable Equilibira","Stable Coexistence","n-Extinct","m-Extinct")
for (x in 1:4)
    {
        for (zz in 1:length(Zseq))
            {
                tmp<-subset(data,z==Zseq[zz])
                tmp<-tmp[order(tmp[,1]),]
                if (zz==1)
                    {
                        plot(tmp$lambda,tmp[,2+x],type="l",lty=2,lwd=1,ylim=c(0,max(data[,2+x])),xlab=expression(lambda),main=mainTitles[x],ylab="Basin Proportion")
                    }
                else
                    {
                        lines(tmp$lambda,tmp[,2+x],col=colSEQ[zz])
                    }
            }

    }




z0<-subset(data,z==0)
z0<-z0[order(z0[,1]),]
plot(z0$lambda,z0$Sn,type="l",lty=2,lwd=1,ylim=c(0,0.35),xlab="Basin Area")

z005<-subset(data,z==0.05)
z005<-z005[order(z005[,1]),]
lines(z005$lambda,z005$Sn,col="yellow")

z01<-subset(data,z==0.1)
z01<-z01[order(z01[,1]),]
lines(z01$lambda,z01$Sn,col="orange")

z25<-subset(data,z==0.25)
z25<-z25[order(z25[,1]),]
lines(z25$lambda,z25$Sn,col="red")


z05<-subset(data,z==0.5)
z05<-z05[order(z05[,1]),]
lines(z05$lambda,z05$Sn,col="darkred")
