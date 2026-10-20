#**********TP3***************
#***partie 1***
#1
handball<-read.table(file = file.choose(),header = TRUE)
View(handball)
#2
names(handball)
#3
str(handball)
#4
summary(handball$POSTE)
#
table(handball$POSTE)
#5
table(handball$POSTE)/length(handball$POSTE)  #frequences
round(table(handball$POSTE)/length(handball$POSTE),2)
#6
pie(table(handball$POSTE)/length(handball$POSTE),main="Postes liés aux 64 handballeurs")
#7
barplot(table(handball$POSTE)/length(handball$POSTE),main="Postes liés aux 64 handballeurs")
#*** partie 2 ***
#8
taille<-handball$TAD
summary(taille)
#9
hist(taille,plot=F)
#10
length(taille[taille>175&taille<=180])

