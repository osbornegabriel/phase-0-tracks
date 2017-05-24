class Santa
	def initialize(gender_string, ethnicity_string)
		puts "Initializing Santa instance here"
		@gender = gender_string
		@ethnicity = ethnicity_string
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
			 "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age += 1
	end

	def eat_milk_and_cookies(cookie)
		print "That was a good #{cookie}!"
	end

	def gender_bender=(new_gender_string)
		@gender = new_gender_string
	end

	def get_mad_at(reindeer_name_string)
		@reindeer_ranking.delete(reindeer_name_string)
		@reindeer_ranking.push(reindeer_name_string)
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
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

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

#This approach did not totally work, because there are two keys named "female"
# santas = []
# santas_hash = {
# 	"agender" => "black",
# 	"female" => "Latino",
# 	"bigender" => "white",
# 	"male" => "Japanese-African",
# 	"female" => "prefer not to say",
# 	"gender fluid" => "Mystical Creature (unicorn)",
# 	"N/A" => "N/A"
# }

# santas_hash.each do |gender, ethnicity|
# 	santas << Santa.new(gender, ethnicity)
# end

santas[1].celebrate_birthday
p santas[1]

santas[0].get_mad_at("Comet")
p santas[0]

santas[-1].gender_bender=("Not Your Business")
p santas[-1]