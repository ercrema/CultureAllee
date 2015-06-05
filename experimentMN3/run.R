
source("alleeIGC.R")
source("basin.R")
source("utility.R")

args <- commandArgs(trailingOnly = TRUE)

# params run competition z lambda
run = as.numeric(args[1])
competition = as.numeric(args[2])
z = as.numeric(args[3])
lambda = as.numeric(args[4])

# fixed values
Am=0.2
Km=0.8
r.m=0.05
x.lim=c(0,1.2)
y.lim=c(0,1.2)

# exploration
cAn=competition
cAm=-competition
cKn=competition
cKm=-competition
diff = Km-Am
An=Am + (1-lambda)*diff
Kn=Km + (1-lambda)*diff
r.n=r.m*EqualiseMaxGrowthRate(An,Am,Kn,Km)

result <- basin(x.lim=x.lim,y.lim=x.lim,points=300,timeSteps=10000,r.n=r.n,r.m=r.m,Kn=Kn,Km=Km,An=An,Am=Am,z=z,cAn=cAn,cAm=cAm,cKn=cKn,cKm=cKm,verbose=F,multicore=TRUE,cores=16)

resultsFile <- paste('result_',paste(sprintf('%03d',run, sep=""),'.Rdata', sep=""), sep="")
print(resultsFile)
save.image(resultsFile)

