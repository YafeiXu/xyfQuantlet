# MARtranchedata1
data=read.csv("C:/Users/up2mike/Documents/GitHub/xyfQuantlet/trancheData.csv")
data=t(data)
t1=data[,1]
t2=data[,2]
t3=data[,3]
t4=data[,4]
t5=data[,5]
plot(1:12,seq(10,700,length.out=12),xlab="Tranche",ylab="Basis Points", col="White")

lines(1:12,t2,pch=2,lty=2,col=2, lwd=2)
lines(1:12,t3,pch=3,lty=3,col=3, lwd=2)
lines(1:12,t4,pch=4,lty=4,col=4, lwd=2)
lines(1:12,t5,pch=5,lty=5,col=5, lwd=2)

legend('topright', c("2nd Tranche","3rd Tranche","4th Tranche","5th Tranche"), lty=c(2,3,4,5),col=c(2,3,4,5), lwd=2)



