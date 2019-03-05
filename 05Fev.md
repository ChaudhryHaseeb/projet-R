# Helper
```
Commandes R pour la régression :   
cor(x,y) # coef de corrélation linéaire  
m = lm(y ~ x) # ajuste le modèle et le stocke dans l'objet m  
summary(m) # fournit les informations  
plot(x, y) # trace le nuage de points  
lines(x, fitted(m), col = "blue") # ajoute au   graphique précédent la droite de régression  
plot(residuals(m)) # trace le nuage des résidus  
```

# Lotissement : Code à executé 
f = read.csv("lotissement.csv")
plot(f)
y = f[, c('Prix.Y')]
x = f[, c('Surface.X')]
m = lm(y ~ x)
summary(m)
lines(x, fitted(m), col = "blue")
plot(residuals(m))

# Anscombe
tab = anscombe
cor(tab)
x1 = tab[, c('x1')]
y1 = tab[, c('y1')]
x2 = tab[, c('x2')]
y2 = tab[, c('y2')]
x3 = tab[, c('x3')]
y3 = tab[, c('y3')]
x4 = tab[, c('x4')]
y4 = tab[, c('y4')]
cor(x1,y2)
m = lm(y1 ~ x1)
plot(x1,y1)
lines(x1, fitted(m), col = "blue")

#### Correction Anscombe
anscombe
traitement = function(x,y)
{
    print(cor(x,y))
    modele = lm(y~x)
    summary(modele)
    plot(x,y)
    lines(x, fitted(modele), col = "blue")
}
traitement(anscombe[,4], anscombe[,8])

# Emploi
f = read.csv("Emploi.csv")
x = f[,1]
y = f[,2]
plot(x,y)
cor(x,y)
> Q: c'est une droite décroissante  
modele = lm(y~x)
plot(x,y)
lines(x, fitted(modele), col = "blue")

# Espérance de vie - Tèlévisions - Médecins
> Q1 : cor(v,t) = -0.6058468 : Droite décroissante
