source("../../src/alleeIGC.R")
source("../../src/basin.R")
source("../../src/utility.R")


library(ggplot2)


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
    resultdf <- rbind(resultdf, data.frame(eq='mExtinct', value=nrow(mExtinct)))
    resultdf <- rbind(resultdf, data.frame(eq='nExtinct', value=nrow(nExtinct)))
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

#percentages <- getPercentages(raw)

#pdf('figure6a.pdf')
#ggplot(percentages, aes(x=lambda, y=value, group=z, col=factor(z))) + geom_line() + facet_wrap(~eq)
#dev.off()
#pdf('figure6b.pdf')    
#ggplot(percentages, aes(x=lambda, y=value, fill=eq)) + geom_bar(stat='identity') + facet_wrap(~z, nrow=3)
#dev.off()

# relative
z0 <- subset(raw, z==0)
relatives <- data.frame(raw)
relatives$rel <- 0

for(value in 1:nrow(raw))
{
    relatives[value,]$rel <- getRelativeValue(raw[value,], z0)
}

pdf('relatives2.pdf')
ggplot(subset(relatives, eq!='unstable' & z<0.6 & z>0), aes(x=lambda, y=rel, group=factor(z), col=factor(z))) + geom_line() + scale_x_reverse() + geom_hline(yintercept=1, linetype="dashed") + facet_wrap(~eq)
dev.off()

