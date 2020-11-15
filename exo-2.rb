## exo 2 - Table de multiplication
# L’utilisateur devrait renseigne un nombre de 1 chiffre
# Le résultat affichera :
# La table de multiplication du chiffre ##chiffre saisie## est :
# 1 * chiffre saisie = chiffre saisie * 1
# 2 * …
#v3 *
# …
# 10 *

# Définir une methode mult
def mult
# Message 
puts "Enter the number:"
# Définir la variable num, méthode get pour que l'utilisateur entre son chiffre, et chomp pour annuler le saut à la ligne
num = gets.chomp
# Message reprenant le chiffre entrer de l'utilisateur
puts "La table de multiplication du chiffre " + num + " est :"
# Création de la boucle allant de 1 à 10
for i in 1..10
# Variable mult, qui permet de multiplier le chiffre de l'user, avec le i boucle de 1 à 10
  mult=num*i
# Affichage de la table de multiplication
	puts "#{num} * #{i} = #{mult}"
end
end







# irb(main):008:0> puts "Enter the number:"
# Enter the number:
# => nil
# irb(main):009:0> num = gets.chomp
# 2
# irb(main):010:0> puts "La table de multiplication du chiffre " + num + " est :"
# La table de multiplication du chiffre 2 est :
# => nil
# irb(main):011:1* for i in 1..10
# irb(main):012:1*     mult=num*i
# irb(main):013:1*     puts "#{num} * #{i} = #{mult}"
# irb(main):014:0> end
# 2 * 1 = 2
# 2 * 2 = 22
# 2 * 3 = 222
# 2 * 4 = 2222
# 2 * 5 = 22222
# 2 * 6 = 222222
# 2 * 7 = 2222222
# 2 * 8 = 22222222
# 2 * 9 = 222222222
# 2 * 10 = 2222222222
# => 1..10