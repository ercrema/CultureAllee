source("../../src/alleeIGC.R")
source("../../src/basin.R")
source("../../src/utility.R")

par(mfrow=c(2,3))
load('../../experimentMN3/01_lambda/result_000.Rdata')
title=sprintf('z: %.2f - lambda: %.2f', z, lambda)
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b")

load('../../experimentMN3/01_lambda/result_001.Rdata')
title=sprintf('z: %.2f - lambda: %.2f', z, lambda)
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b")

load('../../experimentMN3/01_lambda/result_002.Rdata')
title=sprintf('z: %.2f - lambda: %.2f', z, lambda)
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b")

load('../../experimentMN3/01_lambda/result_003.Rdata')
title=sprintf('z: %.2f - lambda: %.2f', z, lambda)
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b")

load('../../experimentMN3/01_lambda/result_004.Rdata')
title=sprintf('z: %.2f - lambda: %.2f', z, lambda)
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b")

load('../../experimentMN3/01_lambda/result_005.Rdata')
title=sprintf('z: %.2f - lambda: %.2f', z, lambda)
basinPlot(res=result,Am=Am,Km=Km,An=An,Kn=Kn,cKn=cKn,cKm=cKm,main=title,xlab="a",ylab="b")

dev.print(device=pdf,'fig5.pdf')




