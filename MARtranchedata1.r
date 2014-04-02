# MARtranchedata1

data=read.csv("C:/Users/up2mike/Documents/GitHub/xyfQuantlet/trancheData.csv") # use "trancheDate.csv" as data set
data=t(data)
t1=data[,1]
t2=data[,2]
t3=data[,3]
t4=data[,4]
t5=data[,5]
dateC=c("2007-10-23", "2007-11-02",  "2007-11-09", "2007-12-06", "2008-01-11",  "2008-02-04", "2008-02-22", "2008-03-18", "2008-04-04",  "2008-04-07",  "2008-05-30",  "2008-07-01")
plot(seq(10,700,length.out=12),xlab="Date",ylab="Basis Points", col="White",axes=FALSE)
box() 
axis(1,at=1:12, labels=date)
axis(2,at=c(0,50,100,150,200,250,300,350,400,450,500,550,600,650,700)) 
lines(1:12,t2,pch=2,lty=2,col=2, lwd=2)
lines(1:12,t3,pch=3,lty=3,col=3, lwd=2)
lines(1:12,t4,pch=4,lty=4,col=4, lwd=2)
lines(1:12,t5,pch=5,lty=5,col=5, lwd=2)
legend('topright', c("2nd Tranche","3rd Tranche","4th Tranche","5th Tranche"), lty=c(2,3,4,5),col=c(2,3,4,5), lwd=2)









