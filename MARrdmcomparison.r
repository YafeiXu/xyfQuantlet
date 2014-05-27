### MARrdmcomparison
d=read.csv("C:/empiricalResultsData/RBIND.csv")
d=d[,-1]
d=d[-13,]
d=t(d)

title1=c("C_g-j","C_g-g","C_f-j","C_c-j","C_f-g","C_gs-g","C_c-g","C_t-g","C_j-j","C_gs-j","C_t-f","C_t-j","C_f-c","C_gs-f","C_j","C_ng14","C_g","C_gs-t","C_t-c",
"C_ng16","C_ng13","C_gs-gs","C_c-c","C_gs-c","C_t43","C_t42","C_ng15","C_gs6","C_t40","C_gs3","C_gs5","C_f-f","C_t39","C_t41","C_gs2","C_f"," C_gs3","C_t","C_gs","C_gs1","C_t38","C_t-t","C_c")

plot(1:43,seq(0,6,length.out=43) ,bty="l",col="white",axes=FALSE, xaxt="n", yaxt="n",xlab="",ylab="")
for(i in 1:12){
lines(d[,i],pch=i,lty=i,bty="l",col=i, lwd=7)
}

legend('topleft', c("20071023","20071026","20071117","20071206","20080111","20080228","20080314","20080405","20080424","20080529","20080530","20080701"), lty=c(1:12),col=c(1:12), lwd=7,cex=1.5)
box() 
axis(1,at=1:43, labels=F)
axis(2,at=seq(0,6,length.out=6),labels=F)  
 
mtext("Relative Difference Measure", side=2, line=2.7, at=3,  font=2,cex=2) 
mtext("Model", side=1, line=3.7, at=21, font=2,cex=2) 
text(cex=1.1, x=1:43-.35, y=-.61, title1, xpd=TRUE, srt=90)  
mtext(seq(0,6,length.out=6), side=2, las=1, at=seq(0,6,length.out=6), line=.5,
col=1, cex=1)   
###