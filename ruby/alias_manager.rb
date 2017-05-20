#Have user input their name
puts "Welcome to alias_manager. What is your first and last name?"
full_name = gets.chomp

#Reverse first and last names
alias_name = full_name.split(' ').reverse!.join(' ')
p alias_name