library(igraph)
(twitter <- read.csv("twitter-following.csv",
                    stringsAsFactors=FALSE))
# 文字列をファクタとみなす(変換する)」stringsAsFactors=TRUE

senator <- read.csv("twitter-senator.csv",
                    stringsAsFactors=FALSE)
n  <- nrow(senator)
twitter.adj <- matrix(0, nrow=n,ncol=n)
#nn行列、要素は全部ゼロを作成する

colnames(twitter.adj) <- rownames(twitter.adj) <-
    senator$screen_name
# senatorの名前をｒとCに書き込む。C｜r_


for(i in 1:nrow(twitter)){
  twitter.adj[twitter$following[i],
              twitter$followed[i]] <- 1
 } 


twitter.adj <- graph.adjacency(twitter.adj, mode = "directed", diag = FALSE)     

# plot(twitter.adj)
senator$indegree <- degree(twitter.adj, mode = "in")

senator$outdegree <- degree(twitter.adj, mode = "out")


in.order  <- order(senator$indegree, decreasing = TRUE)
out.order <- order(senator$outdegree, decreasing = TRUE)
# 降順
senator[in.order[1:3],]
senator[out.order[1:3],]

n <-nrow(senator)
col <- rep("red",n) # 一度、91名をredとしてColに
col[senator$party=="D"] <- "blue"
col[senator$party=="I"] <- "blue"

pch <- rep(16,n) # 一度、91名を16に
pch[senator$party=="D"] <- 17
pch[senator$party=="I"] <- 8

plot(betweenness(twitter.adj,directed =TRUE),
     betweenness(twitter.adj,directed =FALSE),
     pch = pch, col =col)


