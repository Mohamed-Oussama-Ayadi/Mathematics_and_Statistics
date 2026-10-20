#charger la base hdv2003
data("hdv2003")
db=hdv2003
View(db)
#liste des variables
names(db)
str(db)
summary(db)
#describe(db)
?rename.variable
db=rename.variable(db,c("bricol","occup"),c("bricolage","occupation"))
View(db)
#conversion de type de variable 
db$freres.soeurs<-as.factor(db$freres.soeurs)
str(db)
View(db)
head(db)
levels(db$qualif)
nlevels(db$qualif)
db$qualif<-fct_recode(db$qualif,"Ouvrier"="Ouvrier specialise","Ouvrier"="Ouvrier qualifie","Interm"="Technicien","Interm"="Profession intermediaire")
View(db)
library(forcats)
db$qualif<-fct_recode(db$qualif,"Ouvrier"="Ouvrier specialise","Ouvrier"="Ouvrier qualifie","Interm"="Technicien","Interm"="Profession intermediaire")
View(db)
#db$qualif<-fct_collapse(db$qualif, Ouvrier=c("Ouvrier special","Ouvrier qualifie"), Intern=("Technicien","Profession intermediaire"))
str(db)
levels(db$trav.satisf)
?ordered
db$trav.satisf=ordered(db$trav.satisf, levels=c("Satisfaction", "Insatisfaction", "Equilibre"))
str(db)
