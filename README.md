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

Est-ce que les personne qui trompent on une tête à tromper
    Hypothèse nul : Il n'y a pas de dépendance
    On fais le test du ki2 : p-value = 0.222
    > 0.05 -> on accept l'hypothése nul
Ce qui veut dire que les personne qui trompent leur partenaires ne sont pas reconnu avec une simple photo
    
Les femmes trompent t'elles plus que les hommes
    Sur 82 femmes .. on déjà trompé leur partenaire, moyenne :   
    Sur 88 hommes .. on déjà trompé leur partenaire, moyenne :

Une personne séduisante trompe t'elle plus ?
Y a t'il un lien entre le colonne "Trust" et "Faithful" ?
Y a t'il un lien entre le colonne "SexDimorph" et "Attract" ?
Y a t'il un lien entre les colonnes "SexDimorph", "Attract", "Trust" et "Faithful" ?
