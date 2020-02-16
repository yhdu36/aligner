library(reshape2)

a = read.table('/star_tmp.txt',sep='\t',stringsAsFactors = F)
b <- a[,c(1,2,8)]
fpkm <- dcast(b,formula = V2~V1)
row.names(fpkm) <-fpkm$V2
fpkm<-fpkm[,-1]
names(fpkm)<-unlist(lapply(names(fpkm),function(x){temp<-strsplit(x,'_R2')[[1]][1]}))
saveRDS(fpkm,file="/star_f.rds")
write.table(fpkm,file="star_fluidgim.txt",sep="\t",row.names=T)
