### MARtitle

#--------------------------- title image clayton copula construction with 2 gaussian as margins
library(copula)
library(rgl)
 
### clayton copula construction with 2 gaussian as margins
myMvd1 <- mvdc(copula = archmCopula(family = "clayton", param = 2),
margins = c("norm", "norm"), paramMargins = list(list(mean = 0,
sd = 1), list(mean = 0, sd =1)))

ng=33 # number of grid
x=seq(-2.8,2.3,length.out=ng)  # grid elements
y=seq(-2.8,2.3,length.out=ng)

### function for usage in outer function
fhat=function(x,y){
u=cbind(x,y)
v=numeric()
v=dMvdc(u,myMvd1)
return(v)
}

### use outer function
outer931=outer(x,y,fhat)


### contour 1
filled.contour(x,y,outer931,col=c("white","yellow ","yellow","gold2","gold3","gold4",
"red","red","red2","red3","red4","gray13","gray13","gray13","gray13","gray13"), nlevels=15)

### contour 2
filled.contour(x,y,outer931,col=c("white","red","red1","red2","red3","red4",
"orange","orange1","orange2","orange3","orange4",
"yellow ","yellow1 ","yellow2 ","yellow3 ","yellow4 ",
"green","green1","green2","green3","green4",
"blue","blue1","blue2","blue3","blue4",
"blue","blue1","blue2","blue3","blue4",
"deeppink","deeppink1","deeppink2","deeppink3","deeppink4"
), nlevels=54)


### contour 3
filled.contour(x,y,outer931,col=c("white","gray13","gray13","gray13",
"red","red","red","red","red",
"yellow ","yellow","yellow","yellow","yellow"), nlevels=13)






