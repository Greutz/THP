def ask_first_name
    puts "Entrez votre prénom s'il vous plait"
    print "> "
    first_name = gets.chomp
    return first_name
end

def say_hello(first_name)
    puts "Bonjour, #{first_name} !"
    return first_name
end



def perform
    first_name = ask_first_name
    say_hello(first_name)
    
end
perform