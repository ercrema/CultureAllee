source('allee.R')

ini.m = 1.2
ini.n = 0.03076923

r.n=0.005
r.m=0.005
An=0.2
Am=0.2
Km=1.0
Kn=1.0
z=0.5
timeSteps = 50000
b=2

values <- allee(ini.m=ini.m, ini.n=ini.n, r.n=r.n, r.m=r.m, Am=Am, An=An, Km=Km, Kn=Kn, z=z, timeSteps=timeSteps, b=b)
values <- allee(ini.m=unstable$ini.m[1], ini.n=unstable$ini.n[1], r.n=r.n, r.m=r.m, Am=Am, An=An, Km=Km, Kn=Kn, z=z, timeSteps=timeSteps, b=b)

pdf('lyap.pdf')
plot(values$m, type='l')
dev.off()

# example lorenz atractor
output <-lyap_k(lorenz.ts, m=3, d=2, s=200, t=40, ref=1700, k=2, eps=4)
plot(output)


# embedding dimension    
m <- 10
# time delay
d <- 200
# n. considered neighbours
k <- 2
# radius to find nearest neighbor
eps <- 50
# iterations along which follow the neighbours of each point
s <- 300
# n. points to take into account
ref <- 1000
# theiler window
t <- 100

lyapM1 <- lyap_k(values$m, m=m, d=50, k=k, eps=eps, s=1000, ref=15000, t=t)
lyapM2 <- lyap_k(values$m, m=m, d=100, k=k, eps=eps, s=s, ref=ref, t=t)
lyapM3 <- lyap_k(values$m, m=m, d=200, k=k, eps=eps, s=s, ref=ref, t=t)
lyapM4 <- lyap_k(values$m, m=m, d=500, k=k, eps=eps, s=s, ref=ref, t=t)
lyapM5 <- lyap_k(values$m, m=m, d=1000, k=k, eps=eps, s=s, ref=ref, t=t)
lyapM6 <- lyap_k(values$m, m=m, d=5000, k=k, eps=eps, s=s, ref=ref, t=t)

par(mfrow=c(2,3))    
plot(lyapM1, main="t=50")
plot(lyapM2, main="t=100")
plot(lyapM3, main="t=200")
plot(lyapM4, main="t=300")
plot(lyapM5, main="t=500")
plot(lyapM6, main="t=1000")

