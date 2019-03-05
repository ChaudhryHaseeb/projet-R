# Analyse en composante principales

## Exercice 1 :
install.packages("FactoMineR")  
library(FactoMineR)  
f = read.csv("notes.csv")  

```
tab = f[,-1] # Enlever la varible sur le nom  
tab.acp = PCA(tab, graph = F)  
tab.acp$eig  
plot(tab.acp, choix="var")  
```

>Tous les proches varibles sont proches du cercle donc corélles,
Elles se situent tous du côté droit donc elles sont positives,
L'angle de chacun est a peu pres de 45° donc elles sont corélles aux deux axes.

## Exercice 2 :
 Toutes les fleches sont proches du cercles, 
 Toutes les variables sauf Area et population ne sont pas corréles.
 Le salaires des americains dépend fortement si ils ont obtenu les diplomes aux lycée

 ## Exercice 3:
install.packages("Stat2Data")  
library(Stat2Data)
tab = MedGPA
tab = tab[-54,]
tab = tab[,-c(1,2,3,10,11)]
colnames(tab) = c("test1","test2","oral","phys","erit","bio") 
tab.acp = PCA(tab, graph = F)  
tab.acp$eig  
plot(tab.acp, choix="var")
6 fleches proches du cercles 4 horizontal et 2 vertical


