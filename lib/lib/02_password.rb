# On demande un mdp à l'utilisateur
def signup
puts "Définissez votre password"
print "> "
$mdp = gets.chomp # symbole dollar devant la variable pour la passer en global et y faire appel dans les autres méthodes
end

# On demande à l'utilisateur d'entrer le dis mdp
def login
    puts
    puts "Entrez votre password"
    print "> "
    $login = gets.chomp
    while $mdp != $login # Boucle tant que le bon mdp n'est pas rentré
        puts "Erreur: mauvais password"
        puts "Entrez votre password"
        print "> "
        $login = gets.chomp
    end
end

# Accès à "l'espace secret"
def welcome_screen
    case
    when
    $login == $mdp # Accès si l'utilisateur à bien confirmé son mdp
        puts     #Incroyable design ASCII qui nous rappelle les heures sombres d'internet.(code très léger et rapide)
        puts "  ##############################################"
        puts "  #                                            #"
        puts "  #     Bienvenu dans la zone secrète !        #"           
        puts "  #    Savais-tu que ce fableux programme      #" 
        puts "  #    à été codé en SEULEMENT SIX HEURES ?    #"
        puts "  #         Incroyable n'est-il pas ?          #"
        puts "  #                                            #"
        puts "  #     Appuie sur une touche pour quitter     #"
        puts "  #                                            #"
        puts "  ##############################################"
        print "> "
        quit = gets # On demande un input à l'utilisateur pour quitter le programme parce que pourquoi pas
    end
end
# Méthode orchestre pour bien veiller à lancer les multiples blocs dans le bon ordre
def perform
    signup
    login
    welcome_screen
end

perform