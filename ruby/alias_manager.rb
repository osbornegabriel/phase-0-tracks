#This method converts all vowels to the next vowel in the alphabet,
#and all consonants to the next consonant in the alphabet
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

#This method converts inputted name to an alias name
def alias_creator(name)
#Reverse first and last names
	alias_name = name.split(' ').reverse!.join(' ')
	alias_letters = alias_name.split('')

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
	name = alias_name
end


#Have user input their name
puts "Welcome to alias_manager. What is your first and last name?(Type 'quit' to quit)"
full_name = gets.chomp

converted_names = {}

until full_name == "quit"
	alias_name = alias_creator(full_name)
	converted_names[alias_name] = full_name
	puts "What is the next full name you wish to change?(Type 'quit' to quit.)"
	full_name = gets.chomp
end

#This prints the original names along with their new alias names
converted_names.each {|fake_name, real_name| puts "#{fake_name} is #{real_name}!"}