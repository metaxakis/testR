dat<-iris[,1:4]
pmatrix<-scale(dat)
d<-dist(pmatrix)
c<-hclust(d, method="ward.D2")
plot(c)
rect.hclust(c, k=3)
groups<-cutree(c, k=3)
table( iris$Species, groups)


