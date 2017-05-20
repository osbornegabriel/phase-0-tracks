#Have user input their name
puts "Welcome to alias_manager. What is your first and last name?"
full_name = gets.chomp

#Reverse first and last names
alias_name = full_name.split(' ').reverse!.join(' ')
p alias_name

alias_letters = alias_name.split('')

def vowel(vowel)
	list_vowels = "aeioua"
	if list_vowels.include? vowel
		vowel_value = list_vowels.index(vowel)
		p vowel_value
		vowel_value += 1
		vowel = list_vowels[vowel_value]
	end
end

alias_letters.map! do |letter|
	vowel(letter)
end

p alias_letters