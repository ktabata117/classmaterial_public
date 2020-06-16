florence <- read.csv("florentine.csv")
Nodelist <- names(florence )[-1]
#florence <- as.matrix(florence)[,-1]
# rowSums(florence)
Matrix <- data.matrix(florence)[,-1]

# data flameではないことに注意
# library のインストール
library("igraph")

g <- graph.adjacency(Matrix,mode = "undirected",diag = FALSE)
plot(g)

luness <-closeness(g) #
summary(luness)

# 媒介の中心性
luness1 <- betweenness(g)
plot(g, vertex.siz= betweenness(g), main = "媒介性")