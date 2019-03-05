# Régression multiple

## Exercice 1 : 

>f = read.csv("lotissts-data.csv")  
y = f[,1]  
x1 = f[,2]  
x2 = f[,3]  
x3 = f[,4]  
m = lm(y ~ x1+x2+x3-1) # car on enleve la constante  
summary(m)
plot(fitted(m), residual(m))
```
Le prix dépend grandement du nombre de chambre à coucher, un peu
moins de la surface par unité d'habitation par contre, il ne dépend pas de la distance au centre ville.
```

## Exercice 2 :

f = read.csv("neige.csv")
x = f[,1]  
nei = f[,2]  
alt = f[,3]  
rug = f[,4]  
pen = f[,5]  
ori = f[,6]  
lat = f[,7]  
lon = f[,8] 
cor(f)
m = lm(nei ~ alt+rug+ori+lon)
summary(m)
le modele est globalement significatif : il y a bien un lien entre la variable neige et les autres variable cependant chaque variable prise individuellement n'est pas significative on rejete donc ce modele

Seconde analyse : 
on a le choix entre ces variables 
Toutes les variables sont superieure a 5% on rejete le model

Troisieme analyse :
ce dernier modele n'est toujours pas significatif(inf a 5%)
au de 5% mais il l'est au seul de 10%
il explique de 57.6 de la vairabilité de la hauteur de la neige


## Exercice 3 :
1)
d = read.csv("diamant.csv")
taille = d$Taille
prix  = d$Prix
plot(taille, prix)
cor(taille,prix)
Le nuage est tres proche d'une droite, la correlation vaut environ 0.989
2) 
modele = lm(prix~taille)
summary(modele)
lines(taille, fitted(modele), col ="orange")
on obtient comme formule :
prix = -259 + 3721 * taille
le modele est tres satisfaisant a part la constante négative
cest le principale defaut, on peut predire le prix des grosses pierre mais pas des petites pierre
4)
on prend maintenant comme variable a expliquer le log du prix
lprix = log(prix)
modele2 = lm(lprix ~taille)
summary(modele2)

