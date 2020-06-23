library(readxl)
library(gdata)
imf1_data <- read_excel("imf_data.xlsx")
#imf_data <- read.csv("imf_data1.csv",header=T, fileEncoding="utf-8")

#florence <- as.matrix(florence)[,-1]
# rowSums(florence)
Matrix <- data.matrix(imf1_data)[,-1]

# data flameではないことに注意
# library のインストール
library("igraph")

g <- graph.adjacency(Matrix,
                     mode = "undirected",
                     weighted = TRUE,
                     diag = FALSE)
plot(g)

luness <-closeness(g) #
summary(luness)

# 次数中心性
degree(g) / (vcount(g) - 1)

# 媒介の中心性
(luness1 <- betweenness(g))
plot(g, vertex.siz= betweenness(g), main = "媒介性")

# あくまで、世界の12か国を抽出した。これを世界に拡大させたら低い？
(cluster <- transitivity(g,type="local"))
mean(cluster)
# 1に近い程、クラスター化している。

# 方向性



g1 <- graph.adjacency(Matrix,
                     mode = "directed",
                     weighted = TRUE,
                     diag = FALSE)
# 名前の確認
V(g)$name
#V(g1)$name 
# imf ネットワークの重りづけを確認しておきます。
#E(g)$weight
 
data0 <- fastgreedy.community(g)
data1 <- optimal.community(g)
data$membership