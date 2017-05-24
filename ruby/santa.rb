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
		# @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
		# 	 "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
end

# Jolly = Santa.new



# Jolly.speak
# Jolly.eat_milk_and_cookies("oatmeal cookie")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

santas = []
santas_hash = {
	"agender" => "black",
	"female" => "Latino",
	"bigender" => "white",
	"male" => "Japanese-African",
	"female" => "prefer not to say",
	"gender fluid" => "Mystical Creature (unicorn)",
	"N/A" => "N/A"
}

santas_hash.each do |gender, ethnicity|
	santas << Santa.new(gender, ethnicity)
end

p santas