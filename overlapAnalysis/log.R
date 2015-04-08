

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
                             if (x==1)
                                 {
                                     legend("topright",legend=c("z=0","z=0.05","z=0.1","z=0.25","z=0.5"),lty=c(2,1,1,1,1),col=colSEQ)
                                 }
                    }
                else
                    {
                        lines(tmp$lambda,tmp[,2+x],col=colSEQ[zz])
                    }
                
            }

    }
dev.print(device=pdf,"~/github/CultureAllee/overlapAnalysis/testplot1.pdf")





                                        #line plot
par(mfrow=c(2,2))

        contourplot(UE ~ lambda * z, data = data,main="Unstable Equilibira")
        contourplot(SE ~ lambda * z, data = data,main="Stable Coexistence")
        contourplot(Sm ~ lambda * z, data = data,main="n-Extinct")
        contourplot(Sn ~ lambda * z, data = data,main="m-Extinct")

dev.print(device=pdf,"~/github/CultureAllee/overlapAnalysis/testplot1.pdf")


