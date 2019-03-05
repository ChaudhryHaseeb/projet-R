tab = read.csv("Faithfulfaces.csv")
# On enlève la colonne x
tab = tab[,-1]
# On crée un tableau quantitative
tabQuanti = tab[,-c(7,8)]
