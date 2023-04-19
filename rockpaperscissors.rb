puts "Welcome to Rock Paper Scissors!" 
puts
puts "Choose your play:" 
puts "1. Rock" 
puts "2. Paper" 
puts "3. Scissors" 
print "Type your play:"

PLAYER = gets.chomp.to_i
COMPUTER = rand(3) + 1

# result is:
# 1 for player win
# 2 for computer win
# 3 for tie
# 4 for invalid play

case PLAYER
#rock
when 1
    if COMPUTER == 2
        result = 2
    elsif COMPUTER == 1
        result = 3
    else
        result = 1
    end

#paper
when 2
    if COMPUTER == 3
        result = 2
    elsif COMPUTER == 2
        result = 3
    else
        result = 1
    end

#scissors
when 3
    if COMPUTER == 1
        result = 2
    elsif COMPUTER == 3
        result = 3
    else
        result = 1
    end

#invalid
else
    result = 4

end


def displayPlay(play)
    case play
    when 1
        return "Rock"
    when 2
        return "Paper"
    when 3
        return "Scissors"
    else
        return "Invalid"
    end
end


puts
print "Your play: "
puts displayPlay(PLAYER)
print "Computer play: "
puts displayPlay(COMPUTER)
puts

case result
when 1
    puts "You won =)"
when 2
    puts "The computer won =("
when 3
    puts "It's a tie!"
when 4
    puts "Invalid Play."
end