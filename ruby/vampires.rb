#Now we ask how many applicants need to be interviewed!
i = 0
n = 0

while i == 0
	puts "How many employees will you be interviewing?"
	i = gets.chomp.to_i
	n += 1
	if n == 3
	  puts "Clearly a cat is typing on the keyboard, adios furball!"
	  i += 1
	elsif i == 0
		puts "That is not a number, please re-enter. (If typed out as word, please enter as integer.)"
	end
end

while (i > 0) && (n < 3)
	i -= 1

	#This is the questionaire section!
	puts "What is your name?"
	name = gets.chomp.downcase

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

	vampire = 0
	if ((age == true_age) || (age == true_age - 1)) && ((garlic == "y") && (insurance == "y"))
		vampire = "Probably not a vampire"
	end

	#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance,
	#the result is “Almost certainly a vampire.”
	if ((age != true_age) || (age != true_age - 1)) && ((garlic == "n") && (insurance == "n"))
	  vampire = "Almost definitely a vampire"
	end

	#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
	if (name == "drake cula") || (name == "tu fang")
		vampire = "Definitely a vampire"
	end
	#Otherwise, print “Results inconclusive.”
	if vampire == 0
		vampire = "Results Inconclusive"
	end

	#This is the sunshine allergy calculator
	allergy = 0
	while (allergy != "sunshine") && (allergy != "done")
		puts "Do you have any allergies? (type 'done' when finished)"
		allergy = gets.chomp.downcase
	end

	if allergy == "sunshine"
		vampire = "Probably a vampire"
	end


	name = name.capitalize!
	
	puts "Results for #{name}: #{vampire}"

end

if n < 3
  puts "Results Complete: Have a good day!"
end