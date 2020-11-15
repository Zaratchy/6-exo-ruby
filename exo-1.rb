# Exo 1 - Le palindrone
# Le script Ruby permettra de saisir un mot et de vérifier que ce mot est un palindrome.
# Le retour de code se fera comme suit :
# Le mot mot saisie est un palindrome
# Le mot mot saisie n’est pas un palindrome

#Définir une méthode palindrome?, comme paramétre word
def palindrome?(word)
#Condition si mot retourner et égal au mot, methode chomp, évite le retour à la ligne, et downcase enléve le majuscule
  if word.reverse.chomp.downcase == word.chomp.downcase
#Alors retourne le mot est un palindrome
    puts word + " is a palindrome"
  else
#Sinon le mot is not a palindrome
    puts word + " is not a palindrome"
  end
end



# irb(main):009:0> palindrome?('jojoj')
# jojoj is a palindrome
# irb(main):010:0> palindrome?('jojo')
# jojo is not a palindrome



