## exo 3 - Ecrire une méthode qui prendra 2 paramètres nom et surnom qui affichera
# Hello  surnom     # si seul le surnom est fourni
# Bonjour  nom #   si seul le nom est fourni
# Bonjour Nom # *ET QUE* si les 2 sont fournis

# Définir la méthode helloUser, avec 2 parametres = à null, pour les besoins de l'exo
def helloUser (name = nil, nickname = nil)
# Condition, si l'user entre sont name et pas sont nichname
  if name && !nickname
# Alors afficher bonjour et juste sont name full minuscule
    puts "Bonjour " + name.downcase
# Si l'user entre juste sont nickname alors affiche hello plus sont nickname full minuscule
  elsif !name && nickname
    puts "Hello " + nickname.downcase
# Si l'user entre les deux 
  elsif name && nickname
# Alors affiche Bonjour + le nom 1er lettre en majuscule
    puts "Bonjour " + name.capitalize
  end
end



# irb(main):045:0> helloUser('josci')
# Bonjour josci
# => nil
# irb(main):046:0> helloUser('josic', 'jojo')
# Hello Josic
# => nil
# irb(main):047:0> helloUser(nil, 'jsoci')
# Hellojsoci
# => nil
