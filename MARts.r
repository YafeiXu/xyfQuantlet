# MARts
library(copula)
library(rgl)

# t copula
M=10000 # number of Monte Carlo simulation
rho=.9 # single parameter in correlation matrix of the 3-dimensional Gaussian copula
d=3 # dimension of the Gaussian copula
dOfF=3 # degree of freedom
theta1Input=0.7 # parameter in t-copula

t.cop1 <- tCopula(theta1Input, dim = d, dispstr = "ex",df = 3, df.fixed = TRUE)
U <- rCopula(M, t.cop1 ) 
u1=U[,1]
u2=U[,2]
u3=U[,3]

plot3d(u1, u2, u3,col=4, size=.2, type='s') # draw plot


