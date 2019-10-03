def half_pyramid
    # Bloc de présentation avec récup d'input
    puts "Bienvenu à la demie-pyramide !"
    puts "Entrez un nombre entre 1 et 25 pour l'afficher !"
    print "> "
    input = gets.to_i

    # Boucle de respect de la consigne
    until input.between?(1, 25) do # Tant qu'on entre pas un chiffre entre 1 et 25 on boucle sur la demande
        puts "Raté ! entre un nombre entre 1 et 25"
        print "> "
        input = gets.to_i
    end

    # Définitions des compteurs et variables nécéssaires
    a = input-1
    b = input

    # Boucle affichant la pyramide
    while a > 0 # a va aller à 0, et démarre à plus de 0, définissants les conditions de départ et fin de boucle
        1.upto(b) do |i| # On part de 1 jusqu'a l'input pour le nombre d'étages
        a.times {print " "} # le nombre d'espaces de départ
        i.times {print "#"} # le nombre de dièses pour les étages, s'incrémente à chaque tour grâce à l'index d'upto
        a -= 1 # On décrémente a pour réduire les espaces et finir la boucle
        puts # Saut à la ligne
        end
    end
end

def full_pyramid
    puts "Bienvenu à la pyramide !"
    puts "Entrez un nombre entre 1 et 25 pour l'afficher !"
    print "> "
    input = gets.to_i
    a = input
    c = 1
    # Boucle de respect de la consigne
    until input.between?(1, 25) do 
        puts "Raté ! entre un nombre entre 1 et 25"
        print "> "
        input = gets.to_i
        a = input # On redéfini a, sinon en cas de mauvais nombre, les valeurs d'input s'ajoutent et font planter le programme
    end

    if a > 0
        1.upto(a) do |i| 
            a.times {print " "} 
            print "#" *(c*2-1) # Formule pour doubler les dièses
            a -= 1 #compteur pour ajuster le nombre d'espaces
            c += 1 #compteur pour ajuster le nombre de dièses
            puts 
        end
    end
end

def wtf_pyramid
    puts "Bienvenu à la pyramide folle !"
    puts "Entrez un nombre impair entre 1 et 25 pour l'afficher !"
    print "> "
    input = gets.to_i
    
    until input.odd? && input.between?(1, 25) do 
        puts "IMPAIR ET ENTRE 1 ET 25, TU SAIS PAS LIRE ?"
        print "> "
        input = gets.to_i
        a = input 
    end

    a = input/2 #divise input par 2 pour première moitié pyra
    b = input/2 #un autre parce a est modifié dans la 1ere boucle
    c = 1 #compteur pour le nombre de dièses

    if a > 0
        1.upto(a) do |i| #de 1 à a pour le nombre d'étages
            a.times {print " "} #on part de la moitié de l'input pour les espaces
            print "#" *(c*2-1) #le nombre de dièses, incrémenté de 2 à chaque tour
            a -= 1 #compteur pour ajuster le nombre d'espaces
            c += 1 #compteur pour ajuster le nombre de dièses
            puts #saut à la ligne après chaque tour
        end
    end
    if a == 0 #a est forcément à 0 à la fin de la première boucle
        1.upto(c) do |i| #nombre d'étages, c fini à 5 à la fin de la première boucle
            a.times {print " "} #même chose qu'à la première boucle
            print "#" * (c*2-1) #même chose qu'à la première boucle
            c -= 1 #cette fois ci on réduit le nombre de dièses à chaque tour
            a += 1 #a étant à 0 au début de la boucle, on l'incrémente pour ajuster les espaces
            puts #saut à la ligne
        end #SUCCES, SALE PYRAMIDE, TOUTE LA PUTAIN DE JOURNEE
    end
end

def pyramids
    half_pyramid
    full_pyramid
    wtf_pyramid
end
pyramids