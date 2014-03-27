# MAR2dscatter
# MARpdfgstfrank
#--------------------------- MARgspdf
library(copula)
library(rgl)
M=10000 # number of Monte Carlo simulation
rho=.7 # single parameter in correlation matrix of the 3-dimensional Gaussian copula
d=2 # dimension of the Gaussian copula
norm.cop <- normalCopula(rho, dim = d, dispstr = "ex") 
U <- rCopula(M, norm.cop) 
u1=U[,1]
u2=U[,2]

ng=33 # number of grid
x=seq(0,1,length.out=ng)  # grid elements
y=seq(0,1,length.out=ng)

### function for usage in outer function
fhat=function(x,y){
u=cbind(x,y)
v=numeric()
v=dCopula(u, norm.cop , log=FALSE)
return(v)
}

### use outer function
outer931=outer(x,y,fhat)



### scatter plot and contour
plot(u1,u2, xlab="u1", ylab="u2", pch=19, cex=.1,col=1)

#--------------------------- MARtpdf
library(copula)
library(rgl)
M=10000 # number of Monte Carlo simulation
rho=.7 # single parameter in correlation matrix of the 3-dimensional Gaussian copula
d=2 # dimension of the Gaussian copula
dOfF=3 # degree of freedom
theta1Input=0.7 # parameter in t-copula

t.cop1 <- tCopula(theta1Input, dim = d, dispstr = "ex",df = 3, df.fixed = TRUE)
U <- rCopula(M, t.cop1 ) 
u1=U[,1]
u2=U[,2]

ng=33 # number of grid
x=seq(0,1,length.out=ng)  # grid elements
y=seq(0,1,length.out=ng)

### function for usage in outer function
fhat=function(x,y){
u=cbind(x,y)
v=numeric()
v=dCopula(u, t.cop1  , log=FALSE)
return(v)
}

### use outer function
outer931=outer(x,y,fhat)



### scatter plot and contour
plot(u1,u2, xlab="u1", ylab="u2", pch=19, cex=.1,col=1)

#--------------------------- MARfrankpdf
library(copula)
library(rgl)
M=10000 # number of Monte Carlo simulation
rho=.7 # single parameter in correlation matrix of the 3-dimensional Gaussian copula
d=2 # dimension of the Gaussian copula
theta2Input=0.7 # Kendall's tau

frank.cop <- frankCopula(iTau(frankCopula(), theta2Input), dim = d)
U <- rCopula(M, frank.cop ) 
u1=U[,1]
u2=U[,2]

ng=33 # number of grid
x=seq(0,1,length.out=ng)  # grid elements
y=seq(0,1,length.out=ng)

### function for usage in outer function
fhat=function(x,y){
u=cbind(x,y)
v=numeric()
v=dCopula(u, frank.cop , log=FALSE)
return(v)
}

### use outer function
outer931=outer(x,y,fhat)



### scatter plot and contour
plot(u1,u2, xlab="u1", ylab="u2", pch=19, cex=.1,col=1)

# MARpdfclaytongumbeljoe
#--------------------------- MARclaytonpdf
library(copula)
library(rgl)
M=10000 # number of Monte Carlo simulation
rho=.7 # single parameter in correlation matrix of the 3-dimensional Gaussian copula
d=2 # dimension of the Gaussian copula
theta2Input=0.7 # Kendall's tau

clayton.cop <- claytonCopula(iTau(claytonCopula(), theta2Input), dim = d)
U <- rCopula(M, clayton.cop ) 
u1=U[,1]
u2=U[,2]

ng=33 # number of grid
x=seq(0,1,length.out=ng)  # grid elements
y=seq(0,1,length.out=ng)

### function for usage in outer function
fhat=function(x,y){
u=cbind(x,y)
v=numeric()
v=dCopula(u, clayton.cop, log=FALSE)
return(v)
}

### use outer function
outer931=outer(x,y,fhat)



### scatter plot and contour
plot(u1,u2, xlab="u1", ylab="u2", pch=19, cex=.1,col=1)


#--------------------------- MARgumbelpdf
library(copula)
library(rgl)
M=10000 # number of Monte Carlo simulation
rho=.7 # single parameter in correlation matrix of the 3-dimensional Gaussian copula
d=2 # dimension of the Gaussian copula
theta2Input=0.7 # Kendall's tau

gumbel.cop <- gumbelCopula(iTau(gumbelCopula(), theta2Input), dim = d)
U <- rCopula(M, gumbel.cop ) 
u1=U[,1]
u2=U[,2]

ng=33 # number of grid
x=seq(0,1,length.out=ng)  # grid elements
y=seq(0,1,length.out=ng)

### function for usage in outer function
fhat=function(x,y){
u=cbind(x,y)
v=numeric()
v=dCopula(u, gumbel.cop, log=FALSE)
return(v)
}

### use outer function
outer931=outer(x,y,fhat)



### scatter plot and contour
plot(u1,u2, xlab="u1", ylab="u2", pch=19, cex=.1,col=1)


#--------------------------- MARjoepdf
library(copula)
library(rgl)
M=10000 # number of Monte Carlo simulation
rho=.7 # single parameter in correlation matrix of the 3-dimensional Gaussian copula
d=2 # dimension of the Gaussian copula
theta2Input=0.7 # Kendall's tau

joe.cop <- joeCopula(iTau(joeCopula(), theta2Input), dim = d)
U <- rCopula(M, clayton.cop ) 
u1=U[,1]
u2=U[,2]

ng=33 # number of grid
x=seq(0,1,length.out=ng)  # grid elements
y=seq(0,1,length.out=ng)

### function for usage in outer function
fhat=function(x,y){
u=cbind(x,y)
v=numeric()
v=dCopula(u, joe.cop, log=FALSE)
return(v)
}

### use outer function
outer931=outer(x,y,fhat)



### scatter plot and contour
plot(u1,u2, xlab="u1", ylab="u2", pch=19, cex=.1,col=1)


