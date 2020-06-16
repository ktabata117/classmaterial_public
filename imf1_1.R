library(gdata)
imf1_data <- read_excel("imf_data1.xls")
#imf_data <- read.csv("imf_data1.csv",header=T, fileEncoding="utf-8")
Nodelist <- names(imf1_data )[-1]
#florence <- as.matrix(florence)[,-1]
# rowSums(florence)
Matrix <- data.matrix(imf1_data)[,-1]

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