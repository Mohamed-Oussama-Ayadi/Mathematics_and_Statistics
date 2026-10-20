#Exercice 1
#1.Dataframe
Gender=c("M","F","M","M","F","M",NA,"M")
Manpower=c(25,NA,33,NA,25,29,26,32)
Sales=c(343,280,332,272,326,NA,259,297)
DB=data.frame(Gender,Manpower,Sales)
#2 Calcul des moyennes pour les cases non nuls
mean(DB[Gender==c("M"),]$Manpower,na.rm = T)
mean(DB[Gender==c("F"),]$Manpower,na.rm = T)
##3 Imputation
A=DB[Gender==c("M"),]$Manpower
A[is.na(A)] <- 29.75
B=DB[Gender==c("F"),]$Manpower
B[is.na(B)] <- 29.75



#exercice 2
#1 import
gazela=read.table(file = file.choose(),header=T,sep=";")
#2 decription de la base
dim(gazela)
View(gazela)
str(gazela)
attach(gazela)
#3
na.fail(gazela) #message d'erreur=il y a des valeurs manquantes
#4 calcul taux des données manquantes
sum(is.na(gazela))/prod(dim(gazela)) ##(0.13 >5%) il faut pas supprimer mais plutot imputer
#5 imputation par Hmisc
library(Hmisc)
dat.moy=impute(gazela$NOX, fun=mean)
class(dat.moy)
summary(dat.moy)
dat.moy=as.vector(dat.moy)
#6 imputation par KNN 
library(VIM)
datt=kNN(gazela)
View(datt)
summary(datt)
