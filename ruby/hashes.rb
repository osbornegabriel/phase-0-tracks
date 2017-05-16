#Create hash with the keys that will be used to fill it
Client_info = {
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
Client_info[:name] = name

puts "What is your client's age? (Please use integer instead of phrases like 'on death's door'.)"
age = gets.chomp.to_i
Client_info[:age] = age

puts "How many children does your client have?"
kids = gets.chomp.to_i
Client_info[:kids] = kids

puts "What type of decoration theme does your client prefer?"
decor_theme = gets.chomp
Client_info[:decor_theme] = decor_theme

puts "What quirky preferences does the client have? (If none, type 'nil')"
quirks = gets.chomp
	if quirks == "nil"
		quirks = nil
	end
Client_info[:quirks] = quirks

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
Client_info[:meaningless] = meaningless

#This is a module for changing a value in one of the keys for Client_info
def key_change(key)
	puts "what is new value you wish to input for #{key}"
	new_input = gets.chomp
	Client_info[key] = new_input
end


#Display hash to user and ask if information is correct
correct = "n"
while correct != "y"
puts "Here is your client info: #{Client_info}"
puts "Is all of this info correct?(y/n)"
correct = gets.chomp
	if correct == "y"
		puts "Thank you very much! Enjoy the rest of your day."
	elsif correct == "n"
		puts "Which key do you wish to change?"
		puts "Options: name, age, kids, decor_theme, quirks, meaningless (Otherwise type 'cancel')"
		change = gets.chomp.to_sym
		if change == :cancel
			correct = "y"
		else
		  key_change(change)
		end
	end
end

puts "Here's a copy of your completed form"
p Client_info