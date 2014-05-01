### MARrdmcomparison
d=read.csv("C:/empiricalResultsData/RBIND.csv")
d=d[,-1]
d=d[-13,]
d=t(d)

title1=c("mGJ","mGG","mFJ","mCJ","mFG","mGsG","mCG","mTG","mJJ","mGsJ","mTF","mTJ","mFC","mGsF","aJ","ng14","aG","mGsT","mTC",
"ng16","nNGFig13","mGsGs","mCC","mGsC","t43","t42","ng15","Gs6","t40","Gs3","Gs5","mFF","t39","t41","Gs2","aF"," Gs3","eStuT","eGaussian"," Gs1","t38","mTT","aC")

plot(1:43,seq(0,6,length.out=43) ,bty="l",col="white",axes=FALSE, xaxt="n", yaxt="n",xlab="",ylab="")
for(i in 1:43){
lines(d[,i],pch=i,lty=i,bty="l",col=i, lwd=7)
}

legend('topleft', c("20071023","20071026","20071117","20071206","20080111","20080228","20080314","20080405","20080424","20080529","20080530","20080701"), lty=c(1:12),col=c(1:12), lwd=7,cex=1.5)
box() 
axis(1,at=1:43, labels=F)
axis(2,at=seq(0,6,length.out=6),cex=2, labels=F)  
 
mtext("RDM", side=2, line=2.7, at=3, cex=2, font=2) 
mtext("Model", side=1, line=3.7, at=21, cex=2, font=2) 
text(cex=1.1, x=1:43-.55, y=-.51, title1, xpd=TRUE, srt=45)  
mtext(seq(0,6,length.out=6), side=2, las=1, at=seq(0,6,length.out=6), line=.5,
col=1, cex=2.5)   
###
