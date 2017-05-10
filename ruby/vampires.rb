#This is the questionaire section!
puts "What is your name?"
name = gets.chomp

age = 0
while age == 0
	puts "How old are you? (please use a number)"
	age = gets.chomp.to_i
	if age == 0
		puts "Error, that is not a number. If you want this job you really need to work on your reading comprehension! (Or you spelled it out, please use numberpad)"
	end
end

year = 0
while year == 0
	puts "What year were you born?(please use a four-digit number)"
	year = gets.chomp.to_i
	if year == 0
		puts "Error, that is not a year. Are you even taking this job interview seriously? (Please use the numberpad!)"
	end
end

true_age = 2017 - year

garlic = 0
while (garlic != "y") && (garlic != "n")
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic = gets.chomp
	if (garlic != "y") && (garlic != "n")
		puts "That neither a 'y or a 'n'. I really need to have a discussion with our recruiter."
	end
end

insurance = 0
while (insurance != "y") && (insurance != "n")
	puts "Would you like to enroll in the company's health insurance?(y/n)"
	insurance = gets.chomp
	if (insurance != "y") && (insurance != "n")
		puts "That's neither a...you know what, I know you're just messing with me now."
	end
end

# This is the vampireness-calculation section!
if ((age == true_age) && (age == true_age + 1)) == ((garlic == y) && (insurance == y))
	result = "Probably not a vampire"
end