def signup
puts "Définissez votre password"
print "> "
$mdp = gets.chomp
end

def login
    puts
    puts "Entrez votre password"
    print "> "
    $login = gets.chomp
    while $mdp != $login
        puts "Erreur: mauvais password"
        puts "Entrez votre password"
        print "> "
        $login = gets.chomp
    end
end

def welcome_screen
    case
    when
    $login == $mdp
        puts
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
        quit = gets
    end
end

def perform
    signup
    login
    welcome_screen
end

perform