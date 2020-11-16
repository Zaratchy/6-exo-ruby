## exo 5 Le poids des mots
# À la saisie d’un mot ou d’un groupe de mot séparé par un espace.
# Le script devra retourner le poids total du mot ou groupe de mot.
# Le principe a = 1 , b = 2, c = 3 … z = 26
# Un espace comptera pour 0
# Il n’y a pas de différence entre un « A » et un « a » , ils feront tous les 2 un poids de 1
# Le nombre sera ramené à un nombre de 1 chiffre
# Exemple Z = 26 = 2+6 = 8
# Z vaut d’office 8
# Quelques soit les lettres autour.
# Example complet :
# D A V I D  =
# 4_1_22_9_4 =
# 4 + (2+2) + 9 + 4 =
# 21
# Pour les plus chauds :
# On pourra imaginer de faire un poids de la lettre * 2 si c’est une lettre majuscule.
# (A =1, A= 2….  b=2 B=4)
# *Attention* cette modification devra permettre d’utiliser l’une ou l’autre façon de compter.

# weigthWord

# Définir la méthode poids
def poids
# Tableau contenant l'alphabet
  arrayletters = [*'a'..'z']
# Affiche message
  puts "Veuillez écrire un mot pour calculer son poids"
# Variable pour etrer le mots en string
  word = gets.chomp.to_s
# Variable = 'v''a''r''i'....
  word = word.split("")
# Somme de base
  sum = 0
# Boucle + new variable pour parcourir le mot et additionner les chiffres = lettre dui mot
  word.each do |i|
      eachletter = arrayletters.index(i) +1
      if eachletter > 9
          each = eachletter.to_s.split("")
          sum += each[0].to_i+each[1].to_i
      else
          sum += eachletter
      end
  end
# Afficher phrase plus somme poid du mot
  puts "Le poids du mot est de : #{sum}"
end