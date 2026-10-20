cars #affichage des données
View(cars)
str(cars) #résumé statistique
data1<-cars
View(data1)
data1$dist2<-data1$dist*0.3048
View(data1)
?ifelse
data1$speed2<-ifelse(test=data1$speed<10,yes=NA,no=data1$speed*1.60934)
data1_standard<-scale(data1)
data1_standard
summary(data1_standard)
minimum<-apply(data1,MARGIN = 2, FUN=min) #obtention des minimums par variable
maximum<-apply(data1,MARGIN = 2, FUN=max) #obtention des maximums par variable
cars_01norm<-scale(data1,center=minimum,scale=maximum-minimum)
summary(cars_01norm)
boxplot(data1$dist2)
