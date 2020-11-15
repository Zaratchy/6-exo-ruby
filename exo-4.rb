## exo 4 - Calcul de la moyenne
# Un instituteur souhaite pouvoir aller plus vite en saisissant les notes de ces élèves et en obtenir le nombre est la moyenne pour le trimestre.
# Pour cela, Albert qui a suivi une formation dans l’informatique, il y a fort longtemps, lui a proposé de l’aider. Malheureusement, les cours d’Albert sont un peu loin et il vous demande votre aide.
# Donc, comme vous êtes de bonnes personnes, vous lui avez tou.te.s dit ouI
# Le script devra permettre de saisir note par note,  une fois les notes saisies on stoppera la saisie avec le mot STOP
# Afin de ne pas obtenir d’erreur, on s’assure que _les saisies soient bien des chiffres_.
# Un fois le mot « STOP »  saisie,
# Le programme répondra de lui même qu’il y a eu X notes de saisies et que la moyenne est de Y / 20
# 1ere variante  (optionnelle)
# À la saisie des notes, au lieu de saisir note par note, on saisie toutes les notes sur une seule saisie séparée par des espaces, la validation vaudrait l’envoi des note.
# 2eme variante (optonnelle)
# Au lieu de faire une moyenne sur 20 on pourrait imaginer faire une moyenne sur 10 20 30 mais aussi permettre de saisir des notes non plus sur 20 mais elles aussi sur 10 20 30, sasvhant que bien entendu, il est possible de saisir en même temps des notes sur 10 et des notes sur 20.

#Définir la methode
def way
#Définir les variables
  sum = 0
  enterNumber = 0
  enter=""
  way = 0.0
  #Boucle qui permet d'entrée les notes, et on appuie sur stop pour arreter
  while true
      puts "Enter your notes :"
      enter=$stdin.gets.chomp
      if enter == "stop"
          break
      end
  # Définir les conditions, 20 maximun, et pas d'autre caractères que des chiffres ou nombre, retourne message si erreurs
      if(Integer(enter) rescue false)
          enter = enter.chomp.to_i
          if(enter >=0 && enter <=20)
              sum = sum + enter
              enterNumber += 1
              way = (enter / enterNumber) + way * (enterNumber - 1) / enterNumber
          else
              puts "Grap a notes on 20"
          end
      else
          puts "Is not a note"
      end
  end
# Quand stop donne le résutat
  puts "There is " + enterNumber.to_s + " notes grap, the way is of " + way.to_s + " / 20"
end



# irb(main):144:0> way()
# Enter your notes :
# 10
# Enter your notes :
# 50
# Grap a notes on 20
# Enter your notes :
# 12
# Enter your notes :
# 15
# Enter your notes :
# stop
# There is 3 notes grap, the way is of 12.333333333333332 / 20
# => nil
# irb(main):145:0> 