tab = read.csv("Faithfulfaces.csv")
# On enlève la colonne x
tab = tab[,-1]
# On crée un tableau quantitative
tabQuanti = tab[,-c(7,8)]
y = rep("",length(tabQuanti$Faithful))
for(i in 1:length(tabQuanti$Faithful))
{
    if(tabQuanti$Faithful[i]<4)
    {
        y[i]="faible"
    }
    else if(tabQuanti$Faithful[i]<6)
        {
            y[i]="moyen"
        }
        else
        {
            y[i]="fort"
        }
}

