source("../../src/alleeIGC.R")
source("../../src/basin.R")
source("../../src/utility.R")


library(ggplot2)
library(gridExtra)

getRawValues <- function(run)
{
    fileName <- sprintf('../../experimentMN3/02_relative_lambda/result_%03d.Rdata', run, sep="")
    print(paste('loading:',fileName))
    load(fileName)

    #Identify Stable Attractor Node
    Em=ExpStableNode(Kn,Km,cKn,cKm)$m
    En=ExpStableNode(Kn,Km,cKn,cKm)$n

    delta = 0.00000001
    coexistence <- subset(result, abs(m.final-Em)<delta & abs(n.final-En)<delta)
    extinction <- subset(result, abs(m.final)<delta & abs(n.final)<delta)
    mExtinct <- subset(result, abs(m.final)<delta & abs(n.final-En)<delta)
    nExtinct <- subset(result, abs(m.final-Em)<delta & abs(n.final)<delta)

    total = nrow(coexistence)+nrow(extinction) + nrow(mExtinct) + nrow(nExtinct)
    print(sprintf('total: %02d - should be: %02d',total, nrow(result)))

    resultdf <- data.frame(eq='coexistence', value=nrow(coexistence))
    resultdf <- rbind(resultdf, data.frame(eq='extinction', value=nrow(extinction)))
    resultdf <- rbind(resultdf, data.frame(eq='a Extinct', value=nrow(mExtinct)))
    resultdf <- rbind(resultdf, data.frame(eq='b Extinct', value=nrow(nExtinct)))
    resultdf <- rbind(resultdf, data.frame(eq='unstable', value=(nrow(result)-total)))
    
    resultdf$lambda = lambda
    resultdf$z = z
    return(resultdf)
}


getPercentages<- function(raw)
{
    percentages <- data.frame(raw)
    total <- sum(raw[1:4,]$value)        
    percentages$value = percentages$value/total
    return(percentages)
}

getRelativeValue <- function(row, z0)
{
    z0Value <- subset(z0, lambda==row$lambda & eq==row$eq)$value
    return(1+(row$value-z0Value)/z0Value)
}


raw <- data.frame()
for(run in 0:109)
{
    raw <- rbind(raw, getRawValues(run))
}

percentages <- getPercentages(raw)

# coexistence: #006400
# unstable: #D3D3D3
# nExtinct: #4169E1
# mExtinct: #CD5C5C

pdf('figure6a.pdf', width=12, height=7)
ggplot(subset(percentages, z<0.6), aes(x=lambda, y=value, fill=eq)) + geom_area(stat='identity') + scale_fill_manual(name='Equilibria', values=c('#006400','gold2','#4169E1','#CD5C5C','#D3D3D3'))+ facet_wrap(~z, nrow=2) + scale_x_reverse()
dev.off()


pdf('figure6b.pdf', width=15, height=7)
ggplot(subset(percentages, z<0.6), aes(x=z, y=value, fill=eq)) + geom_area(stat='identity') + scale_fill_manual(name='Equilibria', values=c('#006400','gold2','#4169E1','#CD5C5C','#D3D3D3'))+ facet_wrap(~lambda, nrow=2)
dev.off()

pdf('figure6c.pdf', width=18, height=7)    
g1 <- ggplot(subset(percentages, z==0), aes(x=lambda, y=value, fill=eq)) + geom_area(stat='identity') + scale_fill_manual(name='Equilibria', values=c('#006400','gold2','#4169E1','#CD5C5C','#D3D3D3')) + scale_x_reverse()+ theme(legend.position="bottom")
g2 <- ggplot(subset(percentages, z>0 & z<0.7), aes(x=lambda, y=value, fill=eq)) + geom_area(stat='identity') + scale_fill_manual(name='Equilibria', values=c('#006400','gold2','#4169E1','#CD5C5C','#D3D3D3'))+ facet_wrap(~z, nrow=2) + scale_x_reverse()  + theme(legend.position="none")
grid.arrange(arrangeGrob(g1,g2, widths=c(0.33,0.66),nrow=1))
dev.off()

# relative
#z0 <- subset(raw, z==0)
#relatives <- data.frame(raw)
#relatives$rel <- 0

#for(value in 1:nrow(raw))
#{
#    relatives[value,]$rel <- getRelativeValue(raw[value,], z0)
#}

#pdf('relatives2.pdf')
#ggplot(subset(relatives, eq!='unstable' & z<0.6 & z>0), aes(x=lambda, y=rel, group=factor(z), col=factor(z))) + geom_line() + scale_x_reverse() + geom_hline(yintercept=1, linetype="dashed") + facet_wrap(~eq)
#dev.off()

