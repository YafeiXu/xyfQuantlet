### MARrdm3drotate

library(rgl)
data=read.csv("C:/empiricalResultsData/rbind43DataFrame526.csv") # use "rbind43DataFrame526.csv" as data set
dataframe2=data.frame(data,rowMeans(data[,3:14]))
dRanking=dataframe2[order(dataframe2[,15]),] 

## 
open3d()
p1=c(1,1,0)
p2=c(1,43,0)
p3=c(12,1,0)
p4=c(12,43,0)
p5=c(1,1,6)
p6=c(1,43,6)
p7=c(12,1,6)
p8=c(12,43,6)
pp=data.frame(p1,p2,p3,p4,p5,p6,p7,p8)
pp=t(pp)
Date=pp[,1]
ModelRanking=pp[,2]
RDM=pp[,3]
plot3d(Date,ModelRanking,RDM,col="white",aspect=c(1,1,1.3))

for(i in 1:43){
lines3d(seq(1,12,length.out=12),seq(i,i,length.out=12),dRanking[i,3:14],aspect=c(1,1,1.3),pch=i,lty=i,col=rainbow(43)[i], lwd=7)


#axes3d(yat=seq(1,43,length.out=43),xat=c( 1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12)) 
box3d()

}
