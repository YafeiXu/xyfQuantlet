# MARellparchs


# MARgss
# 10000 Monte Carlo simulations for 3-dimensional Gaussian copula with exchangeable correlation matrix
library(copula)
library(rgl)
M=10000 # number of Monte Carlo simulation
rho=.7 # single parameter in correlation matrix of the 3-dimensional Gaussian copula
d=3 # dimension of the Gaussian copula
norm.cop <- normalCopula(rho, dim = d, dispstr = "ex") 
U <- rCopula(M, norm.cop) 
u1=U[,1]
u2=U[,2]
u3=U[,3]

plot3d(u1, u2, u3,col=4, size=.2, type='s') # draw plot


#-----------------------------------------------------------------------------------------------------
# MARts
library(copula)
library(rgl)

# t copula
M=10000 # number of Monte Carlo simulation
rho=.9 # single parameter in correlation matrix of the 3-dimensional copula
d=3 # dimension of the copula
dOfF=3 # degree of freedom
theta1Input=0.7 # parameter in t-copula

t.cop1 <- tCopula(theta1Input, dim = d, dispstr = "ex",df = 3, df.fixed = TRUE)
U <- rCopula(M, t.cop1 ) 
u1=U[,1]
u2=U[,2]
u3=U[,3]

plot3d(u1, u2, u3,col=4, size=.2, type='s') # draw plot


#-----------------------------------------------------------------------------------------------------
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


#-----------------------------------------------------------------------------------------------------
# MARcs
library(copula)
library(rgl)

# Frank copula
M=10000 # number of Monte Carlo simulation
rho=.9 # single parameter in correlation matrix of the 3-dimensional copula
d=3 # dimension of the copula
dOfF=3 # degree of freedom
theta2Input=0.7 # Kendall's tau

clayton.cop <- claytonCopula(iTau(claytonCopula(), theta2Input), dim = d)
U <- rCopula(M, clayton.cop ) 
u1=U[,1]
u2=U[,2]
u3=U[,3]

plot3d(u1, u2, u3,col=4, size=.2, type='s') # draw plot


#-----------------------------------------------------------------------------------------------------
# MARgs
library(copula)
library(rgl)

# Frank copula
M=10000 # number of Monte Carlo simulation
rho=.9 # single parameter in correlation matrix of the 3-dimensional copula
d=3 # dimension of the copula
dOfF=3 # degree of freedom
theta2Input=0.7 # Kendall's tau

gumbel.cop <- gumbelCopula(iTau(gumbelCopula(), theta2Input), dim = d)
U <- rCopula(M, gumbel.cop ) 
u1=U[,1]
u2=U[,2]
u3=U[,3]

plot3d(u1, u2, u3,col=4, size=.2, type='s') # draw plot


#-----------------------------------------------------------------------------------------------------
# MARjs
library(copula)
library(rgl)

# Frank copula
M=10000 # number of Monte Carlo simulation
rho=.9 # single parameter in correlation matrix of the 3-dimensional copula
d=3 # dimension of the copula
dOfF=3 # degree of freedom
theta2Input=0.7 # Kendall's tau

joe.cop <- joeCopula(iTau(joeCopula(), theta2Input), dim = d)
U <- rCopula(M, clayton.cop ) 
u1=U[,1]
u2=U[,2]
u3=U[,3]

plot3d(u1, u2, u3,col=4, size=.2, type='s') # draw plot








