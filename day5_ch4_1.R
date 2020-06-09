resume<-read.csv(file="resume.csv") # csv file読み込み
dim(resume) #大きさチェック
head(resume)# どんなデータが入っているか firstname sex race call

#人種と就職との関係を示す表(table)#を作ってみよう。
#dataをスライスする。
# 方法は二つあるが、subset(), []のどちらでもスライスできる。
#[]
resumeB<- resume[resume$race == "black",] #resumeの中で黒人
#subset
resumeBB<- subset(resume, subset=(race=="black"))
                  
mean(resumeB$call)# CALL TRUE=1,FALSE=0               )
mean(resumeBB$call)# 同じであることを確認

#カテゴリー変数の導入
#resumeに#typeというの作ります。まず初期化。
resume$type <- NA
resume$type[resume$race =="black"& resume$sex=="female"] <- "blackfemale"
resume$type[resume$race =="black"& resume$sex=="male"] <- "blackmale"
resume$type[resume$race =="white"& resume$sex=="female"] <- "whitefemale"
resume$type[resume$race =="white"& resume$sex=="male"] <- "whitemale"

# 人種ごとの就職成功確率を求めてみます。
# tapply関数、カテゴリ―ごとに同一の計算を実施
tapply(resume$call, resume$type, mean)
# データのスライス


