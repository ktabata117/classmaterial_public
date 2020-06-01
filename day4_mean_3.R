#乱数を発生させる。
set.seed(12)
#さいころフル。
omega <- 1:6
#奇数１偶数２　偶数が2倍の確率
(p<- rep(2:1,3)/9)
#　理論平均を計算
mu<- weighted.mean(omega,p)
# method1理論 標準偏差を計算
sigma <- sqrt(weighted.mean((omega-mu)^2,p))
# method 2　理論標準偏差を計算
sigma1 <-sqrt(weighted.mean(omega^2,p)-mu^2) 

# sampling

MC <- 1000 #　モンテカルロシミュレーション

x <- sample(omega, size=n, pro=p,replace = TRUE)
# 復元ちゅ出をするreplace = TRUE
#標本平均　累積和CUMSUM 番号を止めるこどに平均を求める
xbar <- cumsum(x)/1:n
plot(xbar,col="blue",pch="*")
abline(mu,0,col="tomato2" )

# 実験を何回もしてみる。
# mymean というfunction を作ってみる。
mymean <- function(n) #n回の回した平均をmymean に入れる
 mean(sample(omega, size=n, pro=p,replace = TRUE))

MC < -1000 #同じことを何回やるか
# 実験は３種類　１０回、100回、1000回投げるをMC回実験
nsample<- c(10,100,1000)
op <- par(mfrow = c(1,3)) 
#
for (n in nsample){
  xbar <- replicate(MC,mymean(n))
  hist(xbar,xlim = c(1,6),
       breaks = 20,
       freq = TRUE,
       main = paste0("n=",n),
       col="tomato2" )
}
par(op) # 初期化。データプロットを、もとに戻してもらう。
  
  
  
   

