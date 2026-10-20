#**********TP3***************
#***partie2***
#1
ski<-read.table(file = file.choose(),header = TRUE,sep = "\t")
View(ski)
#2-a
str(ski)
sd(ski$age)
summary(ski$age)
#2-b
which.max(ski$age)
#2-c
res<-hist(ski$age,breaks = seq(11,80,by=5),right = T,plot = F) #histogramme
res
#2-d
ind<-which.max(res$counts)
#2-e
classe.modale<-paste(res$breaks[ind],res$breaks[ind+1],sep="-")
classe.modale
hist(ski$age,breaks = seq(11,80,by=5),right = T,plot=T)
boxplot(ski$age)
#3-a
ski$Q5_lieu<-as.factor(ski$Q5_lieu)
ski$Q6_niveau<-as.factor(ski$Q6_niveau)
levels(ski$Q5_lieu)
levels(ski$Q6_niveau)
#3-b
table(ski$Q5_lieu)
table(ski$Q6_niveau)
round(table(ski$Q5_lieu)/length(ski$Q5_lieu)*100,2)
round(table(ski$Q6_niveau)/length(ski$Q6_niveau)*100,2)
#3-c
names(which.max(table(ski$Q5_lieu)))
names(which.max(table(ski$Q6_niveau)))
#3-d
pie(table(ski$Q5_lieu))
barplot(sort(table(ski$Q5_lieu)))
barplot(sort(table(ski$Q6_niveau)))


