data1 <- read.table(file.choose(), header = TRUE, sep = ";", dec = ",", na.strings = "")
data1
View(data1)
str(data1)
getwd()
write.table(data1,"sida_clean.txt",sep="")
