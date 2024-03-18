; Code fourni dans le cadre du TP02 TCH017 H24
; Auteur : Saad Belgana

; Écrivez votre code avant STOP

; Lecture, trie et affichage du tableau 1



; Lecture, trie et affichage du tableau 2



; Lecture, trie et affichage du tableau 3



; Recherche dichotomique d'une valeur cible dans l'un des tableaux

  
         STOP

; A_LECTUR
;        Fonction pour charger un tableau de caractères ASCII, le convertir en valeurs décimales,
;        et placer les éléments convertis à l'emplacement approprié dans la pile.
; PARAMÈTRES:
;        a_tab : Adresse du début du tableau ASCII en mémoire.
;        a_tai : Taille du tableau, indiquant le nombre de caractères ASCII à convertir.
;        a_ad_t: Adresse dans la pile où les éléments convertis en décimal doivent être stockés.
; RETOURNE:
;        Ne retourne pas de valeur directement. Les éléments convertis en décimal sont placés à l'emplacement spécifié dans la pile.          


   

; A_AFFICH
;        Fonction pour afficher le contenu d'un tableau en format décimal.
; PARAMÈTRES :
;        a_ad_t: Adresse dans la pile du premier élément du tableau à afficher.
;        a_tai : Taille du tableau, indiquant le nombre d'éléments à afficher.
; RETOURNE :
;        Ne retourne pas de valeur. Les éléments du tableau sont affichés en décimal.          


  

; Déclaration de constantes
a_tai1:  .EQUATE 10     ; Taille en octets du tableau 1.
a_tai2:  .EQUATE 20     ; Taille en octets du tableau 2.
a_tai3:  .EQUATE 30     ; Taille en octets du tableau 3.
a_tai4:  .EQUATE 256    ; Taille en octets de l'histogramme.



; Déclaration de variables



; Déclaration de chaînes de caractère pour l'affichage



; Déclaration de chaînes de caractère qui contiennent les éléments des tableaux
a_tab1:  .ASCII  "Allo!"           ; Tableau 1 : [65 108 108 111 33]
a_tab2:  .ASCII  "Message!!!"      ; Tableau 2 : [77 101 115 115 97 103 101 33 33 33]
a_tab3:  .ASCII  "Bonjour TCH017!" ; Tableau 3 : [66 111 110 106 111 117 114 32 84 67 72 48 49 55 33]
.END                  
