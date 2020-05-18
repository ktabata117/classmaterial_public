mydata <-subset(airquality)
#mydata <-subset(airquality,Ozone>90, select=-Temp)

write.csv(mydata, file="mydata.csv")
# kikou<-read.csv(file="mydata.csv", fileEncoding = "sjis")
dim(kikou)# 第一回


plot(1:5)#データ作成
x<-(1:100)
y<- x**2
plot(y,
      col="blue",# color
     lwd=1, # 太さ
      ylab="Y=x**2")
#########
