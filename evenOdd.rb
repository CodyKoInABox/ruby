puts "Welcome to Even or Odd!"
puts
print "Type an integer number: "

INPUT = gets.chomp.to_i

if INPUT%2 == 0
    puts "#{INPUT} is EVEN"
else
    puts "#{INPUT} is ODD"
end