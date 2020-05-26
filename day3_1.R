#https://github.com/ktabata117/classmaterial_public
# githubからデータをダウンロードてみよう。そして、自分の作業ファイルに入れてみて下さい。

kikou <- read.csv(file="mydata.csv", fileEncoding = "sjis") # EXCELdata fileを読む 


# ()で囲んでみる。
head(kikou)
dim(kikou)
View(kikou)
