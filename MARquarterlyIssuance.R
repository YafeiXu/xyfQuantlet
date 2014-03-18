# read data https://github.com/YafeiXu/xyfQuantlet/blob/master/2008quarter.csv
d2008=read.csv("YOUR DATA PATH")

# do plot
plot(as.Date(d2008[,2]),as.numeric(d2008[,6]), xlab="Quarterly Date", ylab="USD Millions",
type="b",col="blue",pch=17)
abline(v=as.Date(d2008[,2])[7],col="red")
abline(v=as.Date(d2008[,2])[21],col="green")
abline(v=as.Date(d2008[,2])[24],col="black")
text(as.Date(d2008[,2])[7], as.numeric(d2008[,6])[7]+3000,
as.numeric(d2008[,6])[7])
text(as.Date(d2008[,2])[21], as.numeric(d2008[,6])[21]-1000,
as.numeric(d2008[,6])[21])
text(as.Date(d2008[,2])[24]-100, as.numeric(d2008[,6])[24]-1000,
as.numeric(d2008[,6])[24])


