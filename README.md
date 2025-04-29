
*********************************
Formation CORLI à R 29 et 30 avril 2025
 
université Paris Cité
Bâtiment Olympe de Gouges
Place Paul Ricoeur 75013 Paris

 
### Installer R puis RStudio 
Installer d'abord R (la dernière version en date, R.4.5.0)
PC  : https://cran.r-project.org/bin/windows/base/
typiquement, https://cran.r-project.org/bin/windows/base/R-4.5.0-win.exe
mac : https://cran.r-project.org/bin/macosx/
typiquement, https://cran.r-project.org/bin/macosx/big-sur-arm64/base/R-4.5.0-arm64.pkg


puis RStudio
https://posit.co/download/rstudio-desktop/
mac: https://download1.rstudio.org/electron/macos/RStudio-2024.12.1-563.dmg
PC : https://download1.rstudio.org/electron/windows/RStudio-2024.12.1-563.exe


Voir pour un mode d'emploi:
https://larmarange.github.io/analyse-R/installation-de-R-et-RStudio.html
ou
https://quanti.hypotheses.org/1813


le carnet (**pad**) pour communiquer : <https://mypads2.framapad.org/mypads/?/mypads/group/corli-xq5r7i9yh/pad/view/r-faq-b02y3i9zm>

### RESSOURCES

Vous pouvez trouver une présentation plus longue (en anglais) de la langue R ici: [https://humanitiesdata.org/text/](https://humanitiesdata.org/text/). Utiliser le nom d'utilisateur **hdir** et mot de passe **hdir**. Il y a 

### PRE-PROGRAMME 
29 avril 2025  10h-17h 
Nicolas Ballier (Université Paris Cité) : R pour débutants : démarrer avec R à l’ère des LLM
 
R et RStudio
R pour les données
R pour les textes 
R pour la visualisation de données 
R pour la reproductibilité des expériences
 
Mercredi 30 avril  10h-17h 
(en anglais, avec traduction)
Taylor Arnold (University of Redmond)  : R , fonctions avancées

 
- interopérabilité packages de l’écrit et de l’oral
- de Praat à l’analyse en dépendance
- text-mining, annotations (pos-tagging, parsing) avec R
- masterclass: venez avec votre  jeu de données et vos problématiques et affinons votre script








### PROGRAMME PREVISIONNEL

10h 00

Tour de table (attentes et connaissances antérieures)


R, Studio
L'environnement 

lE CRAN, l'encyclopédie officielle
Github et Devtools: le réseau social des programmeurs

La documentation des packages 
- la documentation officielle: les packages
Les vignettes
Les articles 
citation("nom_package")


le marché de la data et des formations...


Les LLMs
- 
- 
- 
- les requêtes : l'art du prompt
in R, with the XX package, how do you ....


0. l'Environnement, les  packages


#Naviguer dans son disque dur
getwd()
setwd()
file.chose()


Les données  (vos données)
- le format tidy (tout net, "au carré")
- 



Exercices
EXERCICE
-> chercher à ouvrir un de vos fichiers de données
-> Attention à la coercion de données 
# la coercion des données 
https://www.scaler.com/topics/explicit-coercion-in-r/
as.numeric


1 R pour les données : Husson et al
R pour la Science des données : documenter son script avec les LLM


14h les textes
2 les textes : courbes de croissance de vocabulaire
3 R pour les textes: Husson et al pour l'analyse des spécificités
R pour la Science des données : documenter son script avec les LLM


14h 45 R pour l'analyse en dépendance : introduction avec {UDpipe}

EXERCICE 
0. l'annotation en dépendance (sous R)
1. procéder aux annotations en dépendance
analyser 

15h30 pause

16h réentraîner un modèles avec {udpipe}
Construire un nouveau modèle d'annotation en dépendance à partir d'un corpus aboré ré-annoter
  
16h30  R pour la recherche reproductible

17h00  Continuer à se former en R


prolongements
bilan
-> plan pour le 30 avril


# Pourquoi R change la donne?
<https://hal.science/hal-01346249v1>
Ballier, N, (2019) R, pour un écosystème du traitement des données ? L’exemple de la linguistique. Paul Caron; Rodolphe Defiolle; Marie-Hélène Lay. L’enjeu des métadonnées dans les corpus textuels. Un défi pour les sciences humaines, Presses universitaires de Rennes, pp.97-118, 2019, Rivages linguistiques. ⟨hal-01346249⟩
https://hal.science/hal-01346249v1




