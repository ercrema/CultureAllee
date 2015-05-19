source("../../src/alleeIGC.R")
source("../../src/basin.R")
source("../../src/utility.R")

par(mfrow=c(2,2))
load('../../experimentMN3/03_competition/result_000.Rdata')
title=sprintf('z: %.2f - competition: %.2f', z, competition)
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b")

load('../../experimentMN3/03_competition/result_001.Rdata')
title=sprintf('z: %.2f - competition: %.2f', z, competition)
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b")

load('../../experimentMN3/03_competition/result_002.Rdata')
title=sprintf('z: %.2f - competition: %.2f', z, competition)
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b")

load('../../experimentMN3/03_competition/result_003.Rdata')
title=sprintf('z: %.2f - competition: %.2f', z, competition)
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b")

dev.print(device=pdf,'fig7.pdf')

