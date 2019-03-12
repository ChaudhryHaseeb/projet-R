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
        tabQuanti$Faithful[i]="faible"
    }
    else if(tabQuanti$Faithful[i]<6)
        {
            tabQuanti$Faithful[i]="moyen"
        }
        else
        {
            tabQuanti$Faithful[i]="fort"
        }
}
tabQuanti = tabQuanti[,-c(1,2,4,6)]
tabQuanti = table(tabQuanti)
chisq.test(tabQuanti)

tab = read.csv("Faithfulfaces.csv")
tabF = tab[1:82,]
tabM = tab[83:170,]
y = rep("",length(tab$Attract))
for(i in 1:length(tab$Attract))
{
    if(tab$Attract[i]<3)
    {
        tab$Attract[i]="moche"
    }
    else if(tab$Attract[i]<5)
        {
            tab$Attract[i]="moyen"
        }
        else
        {
            tab$Attract[i]="beau"
        }
}
tab = tab[,-c(1,2,8,5,6,7)]
tab = table(tab)
chisq.test(tab)


tabQuanti = tabQuanti[,-c(1,2,4,6)]
tabQuanti = table(tabQuanti)
chisq.test(tabQuanti)

tabF = tab[83:170,]
tabF = table(tabF$Cheater)

x = tab$SexDimorph
y = tab$Attract
cor(x,y)
cor.test(x,y)
m = lm(y ~ x)
summary(m)
plot(x, y)
lines(x, fitted(m), col = "blue")
