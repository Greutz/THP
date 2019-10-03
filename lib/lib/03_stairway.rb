# Nombre aléatoire entre 1 et 6
def lancé
    return rand(6)+1 # +1 pour éviter de tomber sur 0
end
# Méthode pour checker le résultat du dé
def Check_dice(dice)
    if dice >=5
        puts dice
        puts "Vous montez d'une marche !"
        return 1
    elsif dice == 1
        puts dice
        puts "Vous descendez d'une marche !"
        return -1
    else
        puts dice
        puts "Vous n'avancez pas ..."
        return 0
    end
end
def show_state(num)
    puts "Vous etes sur la marche n°#{num}"
end

def is_over?(num)
    if num == 10
        return true
    else
        return false
    end
end

def perform
    puts "lance le dé toi !"

    step = 1
    show_state(step)

    while(!is_over?(step)) do
        puts "tapez 'entrée' pour jouer"
        gets.chomp
        step += Check_dice(lancé)
        show_state(step)
    end

    puts "GG"
end



def analize_game()
    step = 1
    $med = 0
    show_state(step)
    while(!is_over?(step)) do
        step += Check_dice(lancé)
        show_state(step)
        $med += 1
    end
    return $med    
end


def ana(med = med)
    $r = 0
    100.times do
    analize_game
    $r += $med
    end
    puts $r
    puts $r/100
end

perform
#ana # Les méthodes pour afficher le nombre de tours moyen
