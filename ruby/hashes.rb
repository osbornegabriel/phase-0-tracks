#Create hash with the keys that will be used to fill it
client_info = {
	name: nil,
	age: nil,
	kids: nil,
	decor_them: nil,
	quirks: nil,
	meaningless: nil,
}

#collect user infor for each key

puts "Welcome to the designer care client collection data deluge.
Here are some questions we'd like you to answer about this client."
puts "What is your client's name?"
name = gets.chomp
client_info[:name] = name

p client_info[:name]