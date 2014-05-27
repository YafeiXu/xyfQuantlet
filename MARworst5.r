### MARworst5


data=read.csv("C:/empiricalResultsData/rbind43DataFrame526.csv") # use "rbind43DataFrame526.csv" as data set
dataframe2=data.frame(data,rowMeans(data[,3:14]))
dRanking=dataframe2[order(dataframe2[,15]),] 

dateC=c("2007-10-23", "2007-11-02",  "2007-11-09", "2007-12-06", "2008-01-11",  "2008-02-04", "2008-02-22", "2008-03-18", "2008-04-04",  "2008-04-07",  "2008-05-30",  "2008-07-01")
plot(1:12,seq(min(dRanking[39:43,3:14]),max(dRanking[39:43,3:14]),length.out=12),xlab="",ylab="", col="White",axes=FALSE, xaxt="n", yaxt="n")
box() 
axis(1,at=1:12, labels=FALSE)
axis(2,at=c(0.9903, 2.1881, 3.3859, 4.5837, 5.7815))  
mtext("Relative Difference Measure (RDM)", side=2, line=2.7, at=3.3859, font=2)  
mtext("Pricing Date", side=1, line=3.7, at=6, font=2)  
text(cex=1, x=1:12-.45, y=1-.5, dateC, xpd=TRUE, srt=45)  
#####

lines(1:12,dRanking[39,3:14],pch=1,lty=1,col=39, lwd=9)
lines(1:12,dRanking[40,3:14],pch=1,lty=2,col=40, lwd=9)
lines(1:12,dRanking[41,3:14],pch=1,lty=3,col=41, lwd=9)
lines(1:12,dRanking[42,3:14],pch=1,lty=4,col=42, lwd=9)
lines(1:12,dRanking[43,3:14],pch=1,lty=5,col=43, lwd=9)


legend('topright', c("C_gs","C_gs1","C_t38","C_t-t","C_c (worst)"), lty=c(1:6),col=c(39:43), lwd=9,cex=1.5)
###