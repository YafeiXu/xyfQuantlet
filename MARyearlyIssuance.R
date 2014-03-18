# read data https://github.com/YafeiXu/xyfQuantlet/blob/master/2000year.csv
d2000=read.csv("YOUR DATA PATH") 

# do plot
plot(as.Date(d2000[,1]),as.numeric(d2000[,6]), xlab="Yearly Date", ylab="USD Millions",
type="b",col="blue",pch=17)
abline(v=as.Date(d2000[,1])[10],col="red")
abline(v=as.Date(d2000[,1])[7],col="green")
abline(v=as.Date(d2000[,1])[14],col="black")
text(as.Date(d2000[,1])[10], as.numeric(d2000[,6])[10]+20000,
as.numeric(d2000[,6])[10])
text(as.Date(d2000[,1])[7], as.numeric(d2000[,6])[7]-15000,
as.numeric(d2000[,6])[7])
text(as.Date(d2000[,1])[14], as.numeric(d2000[,6])[14]+25000,
as.numeric(d2000[,6])[14])

