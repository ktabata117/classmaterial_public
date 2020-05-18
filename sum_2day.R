Ozone <- kikou$Ozone
kion  <- kikou$Temp
mean(kion)
min(kion)
max(kion)
plot(Ozone~kion)

x <- subset(kikou,select = -c(Month, Day))
m_kion<- aggregate(kikou[,-1], by =list(kikou$Month, 
                                        オゾンデータなし= kikou$Ozone>0,
                                        湿度データなし=kikou$Solar.R>0),
                   FUN = "mean")
print(m_kion)