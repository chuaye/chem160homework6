
rmr<-read.table("secher.txt",header=T)
model<-lm(bwt~bpd, data=rmr)
sum.model<-summary(model)
R2<-sum.model$r.squared
f<-sum.model$fstatistic 
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output)
intercept<-model$coefficients[1]
slope<-model$coefficients[2]
output<-sprintf("slope=%f  intercept=%f",slope, intercept)
cat(output)
png("bwt_bpd.png")
plot(bwt~bpd, data=rmr)
abline(model)
dev.off()

rmr<-read.table("secher.txt",header=T)
model.1<-lm(bwt~ad, data=rmr)
sum.model.1<-summary(model.1)
R2<-sum.model.1$r.squared
f<-sum.model.1$fstatistic 
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output)
intercept<-model.1$coefficients[1]
slope<-model.1$coefficients[2]
output<-sprintf("slope=%f  intercept=%f",slope, intercept)
cat(output)
png("bwt_ad.png")
plot(bwt~ad, data=rmr)
abline(model.1)
dev.off()


rmr<-read.table("secher.txt",header=T)
model.2<-lm(bwt~bpd+ad, data=rmr)
sum.model.2<-summary(model.2)
R2<-sum.model.2$r.squared
f<-sum.model.2$fstatistic 
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output)
intercept<-model.2$coefficients[1]
slope<-model.2$coefficients[2]
output<-sprintf("slope=%f  intercept=%f",slope, intercept)
cat(output)



