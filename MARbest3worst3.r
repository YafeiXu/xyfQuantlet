# MARbest3worst3

d=read.csv("C:/huMAdata/measureDataFrame.csv") # read data set measureDataFrame.csv from xyfQuantlet
dateC=c("2007-10-23", "2007-11-02",  "2007-11-09", "2007-12-06", "2008-01-11",  "2008-02-04", "2008-02-22", "2008-03-18", "2008-04-04",  "2008-04-07",  "2008-05-30",  "2008-07-01")
plot(1:12,seq(0,8,length.out=12),xlab="Date",ylab="Relative Difference Measure (RDM)", col="White",axes=FALSE)
box() 
axis(1,at=1:12, labels=dateC)
axis(2,at=c(0,1,2,3,4,5,6,7,8,9)) 
lines(1:12,d[16,3:14],pch=2,lty=2,col=2, lwd=2)
lines(1:12,d[14,3:14],pch=3,lty=3,col=3, lwd=2)
lines(1:12,d[7,3:14],pch=4,lty=4,col=4, lwd=2)
lines(1:12,d[39,3:14],pch=2,lty=5,col=5, lwd=2)
lines(1:12,d[24,3:14],pch=3,lty=6,col=6, lwd=2)
lines(1:12,d[27,3:14],pch=4,lty=7,col=7, lwd=2)
legend('topright', c("C_g-j (best)","C_g-g","C_f-j","C_t (worst)","C_gs4","C_gs11"), lty=c(2,3,4,5,6,7),col=c(2,3,4,5,6,7), lwd=2)