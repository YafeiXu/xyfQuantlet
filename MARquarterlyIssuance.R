# MARquarterlyIssuance

# read data https://github.com/YafeiXu/xyfQuantlet/blob/master/2008quarter.csv
d2008=read.csv("C:/Users/up2mike/Documents/GitHub/xyfQuantlet/2008quarter.csv")

# do plot
dateC=c("2008Q1", "2008Q2",  "2008Q3", "2008Q4","2009Q1", "2009Q2",  "2009Q3", "2009Q4","2010Q1", "2010Q2",  "2010Q3", "2010Q4","2011Q1", "2011Q2",  "2011Q3", "2011Q4","2012Q1", "2012Q2",  "2012Q3", "2012Q4",
"2013Q1", "2013Q2",  "2013Q3", "2013Q4")
plot(1:24,seq(0,30000,length.out=24), xlab=" ", ylab=" ",
type="b",pch=17, col="White",axes=FALSE, xaxt="n", yaxt="n", font=2,cex=2)
box()
axis(1,at=1:24, labels=FALSE)
axis(2,at=c(0,  7500, 15000, 22500, 30000))  
mtext("USD Million", side=2, line=2.7, at=15000, font=2,cex=2)  
mtext("Quarter", side=1, line=3.7, at=11, font=2,cex=2)  
text(cex=1, x=1:24-.45, y=0.272800-3000, dateC, xpd=TRUE, srt=30)  
#plot(as.Date(d2008[,2]),as.numeric(d2008[,6]), xlab="Quarterly Date", ylab="USD Millions",
#type="b",col="blue",pch=17, col="White",axes=FALSE, xaxt="n", yaxt="n")
lines(1:24,as.numeric(d2008[,6]),type="b",col="blue",pch=17, lwd=9)
abline(v=7,col="red", lwd=9)
abline(v=21,col="green", lwd=9)
abline(v=24,col="black", lwd=9)
text(7, as.numeric(d2008[,6])[7]+2000,
as.numeric(d2008[,6])[7])
text(21, as.numeric(d2008[,6])[21]+2000,
as.numeric(d2008[,6])[21])
text(24-1, as.numeric(d2008[,6])[24]+2000,
as.numeric(d2008[,6])[24])


