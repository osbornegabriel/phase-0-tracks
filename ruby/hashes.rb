#Create hash with the keys that will be used to fill it
client_info = {
	name: nil,
	age: nil,
	kids: nil,
	decor_theme: nil,
	quirks: nil,
	meaningless: nil,
}

#collect user infor for each key

puts "Welcome to the designer care client collection data deluge.
Here are some questions we'd like you to answer about this client."
puts "What is your client's name?"
name = gets.chomp
client_info[:name] = name

puts "What is your client's age? (Please use integer instead of phrases like 'on death's door'.)"
age = gets.chomp.to_i
client_info[:age] = age

puts "How many children does your client have?"
kids = gets.chomp.to_i
client_info[:kids] = kids

puts "What type of decoration theme does your client prefer?"
decor_theme = gets.chomp
client_info[:decor_theme] = decor_theme

puts "What quirky preferences does the client have? (If none, type 'nil')"
quirks = gets.chomp
	if quirks == "nil"
		quirks = nil
	end
client_info[:quirks] = quirks

puts "True or False: Your client knows that decoraction is ultimately meaningless,
as soon the dark one shall rise and bathe in the blood of the innocent,
and replace any and all funding for health care plans with lakes of fire,
except that which will be used to create ponds of fire for the children,
which shall be filled with ducks, which are also on fire."
meaningless = gets.chomp.downcase
	if meaningless == "true"
		meaningless = true
	elsif meaningless == "false"
		meaningless = false
	else
		meaningless = nil
	end
client_info[:meaningless] = meaningless


#Display hash to user and ask if information is correct
while correct != "y"
puts "Here is your client info: #{client_info}"
puts "Is all of this info correct?(y/n)"
correct = gets.chomp
		if correct == "n"
			puts "Thank you very much! Enjoy the rest of your day."
		elsif == "n"
			puts "Which key do you wish to change?"
			