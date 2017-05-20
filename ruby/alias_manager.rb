
#Have user input their name
puts "Welcome to alias_manager. What is your first and last name?(Type 'quit' to quit)"
full_name = gets.chomp
#Reverse first and last names

alias_name = full_name.split(' ').reverse!.join(' ')
alias_letters = alias_name.split('')

def letter_converter(letter)
	list_vowels = "aeioua"
	list_consonants = "bcdfghjklmnpqrstvwxyzb"
	if list_vowels.include? letter
		vowel_value = list_vowels.index(letter)
		vowel_value += 1
		letter = list_vowels[vowel_value]
	elsif list_consonants.include? letter
		consonant_value = list_consonants.index(letter)
		consonant_value += 1
		letter = list_consonants[consonant_value]
	else
		letter = letter
	end
end

alias_letters.map! do |letter|
	letter_converter(letter.downcase)
end

alias_name = alias_letters.join.capitalize!

if alias_name.index(" ") != nil
	start_of_last_name = alias_name.index(" ")
	start_of_last_name += 1
	alias_name[start_of_last_name] = alias_name[start_of_last_name].capitalize
else
	nil
end

p alias_name