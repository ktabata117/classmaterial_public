x<- 1:10
set.seed(123) # set.seedの意味
sample(x,5) # 箱に戻さない
sample(x,10,replace=TRUE)# 戻さない

#さいころを10回をPCにやらせてみる
sample(1:6,10,replace=TRUE)
#######


#coin を投げる
set.seed(1)
x1 <- rbinom(10,size=1,prob=0.5)
P <- x1/10
mu1 <- weighted.mean(x1,p)


# 0-1の間で一様分布するものから、5回取り出してみる
runif(5)

# example

# 制御文　for

s=0

for  (i in 1:5) {
  s <- s+i
     }
print(s)

