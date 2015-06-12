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

    result <- subset(result, ini.m>=Am & ini.m<=Km & ini.n>=An & ini.n<=Kn)

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

raw <- data.frame()
for(run in 0:153)
{
    raw <- rbind(raw, getRawValues(run))
}

percentages <- getPercentages(raw)
colorValues = c('#006400','#4169E1','#CD5C5C','gold2')

#ggplot(percentages, aes(x=z, y=value, fill=eq)) + geom_area(stat='identity') + scale_fill_manual(name='Equilibria', values=colorValues)+ facet_wrap(~lambda)

plotted <- subset(percentages, lambda >=0.85 | lambda==0.5 | lambda==0.35 )
plotted$lambda <- factor(plotted$lambda, levels=c(1,0.95,0.9,0.85,0.5,0.35))    

# coexistence: #006400
# extinct: #D3D3D3
# nExtinct: #4169E1
# mExtinct: #CD5C5C

# ggplot(percentages, aes(x=z, y=value, fill=eq)) + geom_area(stat="identity") + facet_wrap(~lambda)
pdf('figure6.pdf', width=10, height=6)

ggplot(plotted, aes(x=z, y=value, fill=eq)) + geom_area(stat='identity') + scale_fill_manual(name='Equilibria', values=colorValues)+ facet_wrap(~lambda, nrow=2)

dev.off()

