# MARgss
# 10000 Monte Carlo simulations for $3$-dimensional Gaussian copula with exchangeable correlation matrix
library(copula)
library(rgl)
M=10000 # number of Monte Carlo simulation
rho=.9 # single parameter in correlation matrix of the 3-dimensional Gaussian copula
d=3 # dimension of the Gaussian copula
norm.cop <- normalCopula(rho, dim = d, dispstr = "ex") 
U <- rCopula(M, norm.cop) 
u1=U[,1]
u2=U[,2]
u3=U[,3]

plot3d(u1, u2, u3,col=4, size=.2, type='s') # draw plot
