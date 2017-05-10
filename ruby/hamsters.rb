puts "What is the hamster's name?"
name = gets.chomp
puts "What is the volume level of the hamster on a scale of 1 to 10?"
volume = gets.chomp.to_i
puts "What is the hamster's fur color?"
fur_color = gets.chomp
puts "Is this hamster a good candidate for adoption?"
answer = gets.chomp
puts "Estimated age of hamster, if unsure, write unsure."
estimated_age = gets.chomp
if estimated_age == "unsure"
  then estimated_age = nil
end