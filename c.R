# Sample data
data <- mtcars

# Create a distance matrix
d <- dist(data, method = "euclidean")

# Perform hierarchical clustering using Ward's method
c <- hclust(d, method = "ward.D2")

# Visualize the dendrogram
plot(c, main = "Dendrogram of Ward's Clustering", sub = "", xlab = "")

# Cut the tree into 3 clusters
clusters <- cutree(c, k = 3)

# Add cluster assignments to the dataset
data$cluster <- clusters

# View the clustered data
head(data)
