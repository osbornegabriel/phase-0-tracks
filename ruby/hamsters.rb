puts "What is the hamster's name?"
name = gets.chomp
puts "What is the volume level of the hamster on a scale of 1 to 10?"
volume = gets.chomp.to_i
puts "What is the hamster's fur color?"
fur_color = gets.chomp
puts "This hamster is a good candidate for adoption? (true/false)"
answer = gets.chomp

if answer == "true"
	adoption = true
else adoption = false
end

puts "Estimated age of hamster, if unsure, write unsure."
estimated_age = gets.chomp
if estimated_age == "unsure"
  then estimated_age = nil
elsif estimated_age != nil
  then age = estimated_age.to_i
end

puts "Your hamster's name is #{name}! The volume level of your hamster is #{volume}.
Your hamster is #{fur_color}. Estimated age of hamster: #{age}"

if adoption
	puts "This hamster should totally be adopted by a loving family!"
else
	puts "Who brought #{name} in? Put it to work in the galley."
end
