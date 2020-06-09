covic<-read.csv(file="us-states.csv")
head(covic)#
covic$elec <- "trump"
covic$elec[covic$fips =="53"] <- "clington"
covic$elec[covic$fips =="6"] <- "clington"
covic$elec[covic$fips =="25"] <- "clington"
covic$elec[covic$fips =="17"] <- "clington"
covic$elec[covic$fips =="36"] <- "clington"
covic$elec[covic$fips =="44"] <- "clington"
covic$elec[covic$fips =="33"] <- "clington"
covic$elec[covic$fips =="41"] <- "clington"
covic$elec[covic$fips =="8"] <- "clington"
covic$elec[covic$fips =="15"] <- "clington"
covic$elec[covic$fips =="24"] <- "clington"
covic$elec[covic$fips =="32"] <- "clington"
covic$elec[covic$fips =="50"] <- "clington"
covic$elec[covic$fips =="51"] <- "clington"
covic$elec[covic$fips =="9"] <- "clington"
covic$elec[covic$fips =="11"] <- "clington"
covic$elec[covic$fips =="34"] <- "clington"
covic$elec[covic$fips =="10"] <- "clington"
#list 形式であることに注意
tapply(covic$cases,list(covic$date,covic$elec), sum)

# 死亡者
tapply(covic$deaths,list(covic$date,covic$elec),sum)

#応用　二つの集団の平均は統計的に異なると言えるのかを検定 
t_cases <- subset(covic, subset = (elec=="trump")) 
c_cases <- subset(covic, subset = (elec=="clington")) 
t_cases[,5] 
t_cases[,4]
tdratio <- t_cases[,5]/t_cases[,4]
cdratio <- c_cases[,5]/c_cases[,4]
mean(tdratio)
mean(cdratio)
t.test(cdratio,tdratio,alternative="less")#cdratioよりtdratioが低いり

