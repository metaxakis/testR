dat<-mtcars
pmatrix<-scale(dat)
d<-dist(pmatrix)
c<-hclust(d, method="ward.D2")
plot(c, main="Dendrogram of Ward's Clustering", sub="", xlab="")
rect.hclust(c, k=5)
groups<-cutree(c, k=5)
dat$cluster<-groups
head(dat)




