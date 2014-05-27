# MARyearlyIssuance


# read data https://github.com/YafeiXu/xyfQuantlet/blob/master/2008quarter.csv
d2000=read.csv("C:/Users/up2mike/Documents/GitHub/xyfQuantlet/2000year.csv")

# do plot
dateC=c("2001", "2002",  "2003", "2004","2005", "2006",  "2007", "2008","2009", "2010",  "2011", "2012","2013", "2014")
plot(1:14,seq(0,600000,length.out=14), xlab=" ", ylab=" ",
type="b",pch=17, col="White",axes=FALSE, xaxt="n", yaxt="n", font=2,cex=2)
box()
axis(1,at=1:14, labels=FALSE)
axis(2,at=c(0, 120000, 240000, 360000, 480000, 600000))  
mtext("USD Million", side=2, line=2.7, at= 360000, font=2,cex=2)  
mtext("Year", side=1, line=3.7, at=7, font=2,cex=2)  
text(cex=1, x=1:14-.15, y=0.272800-50000, dateC, xpd=TRUE, srt=30)  
#plot(as.Date(d2008[,2]),as.numeric(d2008[,6]), xlab="Quarterly Date", ylab="USD Millions",
#type="b",col="blue",pch=17, col="White",axes=FALSE, xaxt="n", yaxt="n")
lines(1:14,as.numeric(d2000[,6]),type="b",col="blue",pch=17, lwd=9)
abline(v=10,col="red", lwd=9)
abline(v=7,col="green", lwd=9)
abline(v=14,col="black", lwd=9)
text(9, as.numeric(d2000[,6])[10]+10000,
as.numeric(d2000[,6])[10])
text(6, as.numeric(d2000[,6])[7]-25000,
as.numeric(d2000[,6])[7])
text(13, as.numeric(d2000[,6])[14]+35000,
as.numeric(d2000[,6])[14])


