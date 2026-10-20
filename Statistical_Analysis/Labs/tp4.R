library(questionr)
data("rp2012")
View(rp2012)
str(rp2012)
#***************A******************
#1
par(mfrow=c(1,2))
#2
plot(rp2012$cadres, rp2012$proprio) #absence de correlation
#3
plot(rp2012$cadres, rp2012$dipl_sup)#présence d'une corrélation linéaire
#6
cor(rp2012$cadres, rp2012$dipl_sup) # la valeur du coefficient de pearson est proche de 1 ce qui confirme le résultat graphique
cor(rp2012$cadres, rp2012$dipl_sup, method="spearman")
#7
cor(rp2012$cadres, rp2012$proprio) # la valeur est faible ce qui confirme l'absene de corrélation
cor(rp2012$cadres, rp2012$proprio, method="spearman")
#8
cor.test(rp2012$cadres,rp2012$dipl_sup)
shapiro.test(rp2012$cadres[1:1000])
#***************B******************
#qualit-qualit
data("hdv2003")
str(hdv2003)
#1
cont=table(hdv2003$qualif,hdv2003$sexe)
#2
mosaicplot(cont)
#3
chisq.test(cont) #p-valus<0,05 on rejette l'hypothése d'indépendance
#***************C******************
#qualit-quantit
#1
sportif=hdv2003[hdv2003$sport=="Oui",]
non_sportif=hdv2003[hdv2003$sport=="Non",]
#2
mean(sportif$age)
mean(non_sportif$age) # les deux moyennes sont différentes, on peut mettre
#l'hypothése que ces deux variables sont dépendantes.
#Mais s'agit t il d'une différence significative?
#3
boxplot(hdv2003$age~hdv2003$sport)
# les deux boites sont différentes on peut conclure que les deux variable sont dépendantes.
#4
hist(sportif$age) ##distribution s'éloigne de la loi normale
hist(non_sportif$age) ##distribution se raproche de la loi normale
#5
shapiro.test((sportif$age))
shapiro.test((non_sportif$age))
##p-value<0,05 Le test est significatif dans les deux cas et rejette l'hypothése d'une normalité des deux distributions.
#test de wilcox
#6
wilcox.test(hdv2003$age~hdv2003$sport)
#La valeur p étant  nouveau extrémement petite, on peut rejeter l'hypothése d'indépendance et considérer que les distributions des ages dans les deux sous-populations sont différentes
