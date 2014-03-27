# MARgumbelpdf
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

### 3d PDF plot
open3d()
persp3d(x,y, outer931,
theta =35, phi = 35,
col="blue",
xlab = "u1", ylab = "u2", zlab = "c(u1, u2)",front="fill",back="line",alpha=0.9,
ticktype = "detailed",aspect=c(1,1,1.3))

box3d()# add a framework


### scatter plot and contour
plot(u1,u2, xlab="u1", ylab="u2", pch=19, cex=.1,col="white")
contour(outer931, drawlabels=T, nlevels=33, col=2, add=TRUE,cex=10)

### scatter plot and contour
plot(u1,u2, xlab="u1", ylab="u2", pch=19, cex=.1,col=1)


