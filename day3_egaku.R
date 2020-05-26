plot(m_kion$Temp,type="b", col="green",
     pch="*",
     xlab="月",
     ylab="気温",
     main="気温の変化")

# 再び日の気候データに戻って
hist(kikou$Temp, 
     border ="lightblue",
     freq= TRUE, 
     col="blue", 
     xlab="気温",
     ylab="頻度", 
     labels=FALSE,
     main ="気温の分布", 
     breaks=20)

pairs(kikou[,-c(1,6,7)], col="blue",pch="*")
#１６７列を除いている。
View(kikou)
