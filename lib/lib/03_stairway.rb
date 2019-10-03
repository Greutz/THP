
def roll_dice
    return rand(6)+1
end
def analyze_dice(dice)
    if dice >=5
        puts "Vous avancez !"
        return 1
    elsif dice == 1
        return -1
    else
        puts "rien ne se passe"
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
        step += analyze_dice(roll_dice)
        show_state(step)
    end

    puts "GG"
end



def analize_game()
    step = 1
    $med = 0
    show_state(step)
    while(!is_over?(step)) do
        step += analyze_dice(roll_dice)
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

ana
