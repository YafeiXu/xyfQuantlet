# MARtranchedata2

data=read.csv("C:/Users/up2mike/Documents/GitHub/xyfQuantlet/trancheData.csv") # use "trancheDate.csv" as data set
data=t(data)
t1=data[,1]
t2=data[,2]
t3=data[,3]
t4=data[,4]
t5=data[,5]
dateC=c("2007-10-23", "2007-11-02",  "2007-11-09", "2007-12-06", "2008-01-11",  "2008-02-04", "2008-02-22", "2008-03-18", "2008-04-04",  "2008-04-07",  "2008-05-30",  "2008-07-01")
plot(t1,xlab="Date",ylab="Upfront Payment Rate (%)", axes=FALSE,col="White")
box() 
axis(1,at=1:12, labels=date)
axis(2,at=c(1:50))
lines(1:12,t1,pch=1,lty=1,col=1, lwd=2)
legend('topright', c("1st Tranche"), lty=c(1),col=c(1), lwd=2)