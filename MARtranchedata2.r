# MARtranchedata2

data=read.csv("C:/Users/up2mike/Documents/GitHub/xyfQuantlet/trancheData.csv") # use "trancheDate.csv" as data set
data=t(data)
t1=data[,1]
t2=data[,2]
t3=data[,3]
t4=data[,4]
t5=data[,5]
dateC=c("2007-10-23", "2007-11-02",  "2007-11-09", "2007-12-06", "2008-01-11",  "2008-02-04", "2008-02-22", "2008-03-18", "2008-04-04",  "2008-04-07",  "2008-05-30",  "2008-07-01")
plot(seq(16,50,length.out=12),xlab=" ",ylab=" ", col="White",axes=FALSE)
box() 
axis(1,at=1:12, labels=FALSE)
axis(2,at=c(16.0, 24.5, 33.0, 41.5, 50.0)) 
mtext("Upfront Payment Rate (%)", side=2, line=2.7, at=33, font=2,cex=2) 
mtext("Pricing Date", side=1, line=3.7, at=6, font=2,cex=2)  
text(cex=1, x=1:12-.45, y=12.5, dateC, xpd=TRUE, srt=30)  
lines(1:12,t1,pch=1,lty=1,col=1, lwd=9)
legend('topright', c("1st Tranche"), lty=c(1),col=c(1), lwd=9,cex=1.5)
##