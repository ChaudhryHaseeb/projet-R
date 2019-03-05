# Statistiques : Projet en langage R
## Sujet
Des psychologues ont demandès à des étudiants d'évaluer la photo de 170 autres personnes.
On s'est arrangé pour que chaque étudiant évalue la photo d'une personne du sexe opposé.
On sait par ailleurs lesquelles de ces 170 personnes se sont montrées fidèles dans leur couple ou non.

SexDimorph
Evaluation par l'étudiant(e) du dimorphisme sexuel : la personne est-elle très masculine, très féminine, ou androgyne ?
    -> Valeur allant de 2.0 à 6.25 median : 4.0

Attract
Evaluation par l'étudiant(e) : la personne est-elle séduisante ?
    -> Valeur allant de 1.25 à 6.33 median : 2.95

Cheater
Fidélité en couple ou non de la personne (1 = oui, 0 = non)

Trust
Evaluation par l'étudiant(e) : peut-on faire confiance à la personne ?
    -> Valeur allant de 2.353 à 6.25 median : 4.235

Faithful
Evaluation par l'étudiant(e) : la personne est-elle fidèle en couple ?
    -> Valeur allant de 2.765 à 7.176 median : 5.235

FaceSex
Sexe de la personne

RaterSex
Sexe de l'étudiant(e) qui évalue

FaceSex :
F  M su
82 88

## Questions posé

### Est-ce que les personne qui trompent on une tête à tromper
    Hypothèse nul : Il n'y a pas de dépendance
    On fais le test du ki2 : p-value = 0.222
    p-value > 0.05 -> on accept l'hypothése nul
### Ce qui veut dire que les personne qui trompent leur partenaires ne sont pas reconnu avec une simple photo
    
### Les femmes trompent t'elles plus que les hommes
    Sur 82 femmes 23 on déjà trompé leur partenaire, pourcentage : 28%
    Sur 88 hommes 27 on déjà trompé leur partenaire, pourcentage : 30%
On peux donc dire que le fait de tromper son partenaire ne dépend pas du sexe.

### Une personne séduisante trompe t'elle plus ?
    Hypothèse nul : Il n'y a pas de dépendance
    On fais le test du ki2 : p-value = 0.66
    p-value > 0.05 -> on accept l'hypothése nul
La beauté d'une personne ne définit pas sa fidélité

### Y a t'il un lien entre le colonne "Trust" et "Faithful" ?
    Hypothèse nul : Il n'y a pas de dépendance
    coefficient de corrélation = 0.4851078
    p-value = 2.026e-11
    La p-value est très inférieur à 0.05, on rejet donc l'hypothèse nul, il y a dépendance entre les variables.
On peux donc dire que les personnes qui pensent pouvoir faire confiance à la personne en photo on plus tendance à dire que ces personnes sont fidèle en couple

### Y a t'il un lien entre les colonnes "SexDimorph" et "Attract" ?
    Hypothèse nul : Il n'y a pas de dépendance
    coefficient de corrélation = 0.6042674
    p-value < 2.2e-16
    La p-value est très inférieur à 0.05, on rejet donc l'hypothèse nul, il y a dépendance entre les variables.
Ce qui veut dire qu'une femme aura plus tendance à être attiré par un homme très masculin et qu'un homme aura plus tendance à être attiré par une femme très féminine

### Y a t'il un lien entre les colonnes "SexDimorph", "Attract", "Trust" et "Faithful" ?
ACP
L'axe horizontal représente 50.74% de la variance
L'axe vertical représente 36.4% de la variance
Le graph représente donc 87% de la variance
Toutes les flèches sont près du cercle : toutes les variables sont fortement corrélées aux deux premiers axes.
Les variables sont cooréllé positivement avec l'axe vertical
L'axe horizontal on a tendance à penser que les personnes belle ne sont pas fidèle
L'axe vertical corespond à la confiance et à l'attraction
