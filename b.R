dat<-iris[,1:4]
pmatrix<-scale(dat)

totwinss<-c()
for (k in 2:10) {
  k_cl= kmeans(pmatrix, k)
  totwinss[k]<-k_cl$tot.withinss
}


plot(1:10, totwinss, xlab="Number of clusters", ylab="Total within ss")
lines(1:10, totwinss)
k_cl= kmeans(pmatrix, 3)
table( iris$Species, k_cl$cluster)
