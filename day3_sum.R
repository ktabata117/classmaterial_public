#kikou <- read.csv("mydata.csv") #csv　FILEの呼び出し
# （）で囲むと、echoとなる。

Ozone <- kikou$Ozone
kion  <- kikou$Temp
mean(kion)
min(kion)
max(kion)
plot(Ozone~kion)  # plot(Y~X); ~はキーボード右上にある。シフトキー押しながら

# subset 関数について説明
x <- subset(kikou,select = -c(Month, Day))
# aggregate 関数について説明 
# monthでデータをソート、関数はmean(平均)
m_kion<- aggregate(kikou, by =list(kikou$Month, 
                                        オゾンデータなし= kikou$Ozone>0,
                                        湿度データなし=kikou$Solar>0),
                   FUN = "mean")
View(m_kion)