# MARfs
library(copula)
library(rgl)

# Frank copula
M=10000 # number of Monte Carlo simulation
rho=.9 # single parameter in correlation matrix of the 3-dimensional copula
d=3 # dimension of the copula
dOfF=3 # degree of freedom
theta2Input=0.7 # Kendall's tau

frank.cop <- frankCopula(iTau(frankCopula(), theta2Input), dim = d)
U <- rCopula(M, frank.cop ) 
u1=U[,1]
u2=U[,2]
u3=U[,3]

plot3d(u1, u2, u3,col=4, size=.2, type='s') # draw plot