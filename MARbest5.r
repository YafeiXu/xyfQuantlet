### MARbest5


data=read.csv("C:/empiricalResultsData/rbind43DataFrame526.csv") # use "rbind43DataFrame526.csv" as data set
dataframe2=data.frame(data,rowMeans(data[,3:14]))
dRanking=dataframe2[order(dataframe2[,15]),] 

dateC=c("2007-10-23", "2007-11-02",  "2007-11-09", "2007-12-06", "2008-01-11",  "2008-02-04", "2008-02-22", "2008-03-18", "2008-04-04",  "2008-04-07",  "2008-05-30",  "2008-07-01")
plot(1:12,seq(.3,1.8,length.out=12),xlab="",ylab="", col="White",axes=FALSE, xaxt="n", yaxt="n")
box() 
axis(1,at=1:12, labels=FALSE)
axis(2,at=c( 0.300, 0.675, 1.050, 1.425, 1.800))  
mtext("Relative Difference Measure (RDM)", side=2, line=2.7, at=1, font=2,cex=2)  
mtext("Pricing Date", side=1, line=3.7, at=6, font=2,cex=2)  
text(cex=1, x=1:12-.45, y=0.1+.05, dateC, xpd=TRUE, srt=30)  
#####

lines(1:12,dRanking[1,3:14],pch=1,lty=1,col=1, lwd=9)
lines(1:12,dRanking[2,3:14],pch=1,lty=2,col=2, lwd=9)
lines(1:12,dRanking[3,3:14],pch=1,lty=3,col=3, lwd=9)
lines(1:12,dRanking[4,3:14],pch=1,lty=4,col=4, lwd=9)
lines(1:12,dRanking[5,3:14],pch=1,lty=5,col=5, lwd=9)


legend('topleft', c("C_g-j (best)","C_g-g","C_f-j","C_c-j","C_f-g"), lty=c(1:6),col=c(1:6), lwd=9,cex=1.5)
###