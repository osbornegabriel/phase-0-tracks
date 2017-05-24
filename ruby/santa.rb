class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		print "That was a good #{cookie}!"
	end

	def initialize(gender_string, ethnicity_string)
		puts "Initializing Santa instance here"
		@gender = gender_string
		@ethnicity = ethnicity_string
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
			 "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
end

Jolly = Santa.new



Jolly.speak
Jolly.eat_milk_and_cookies("oatmeal cookie")