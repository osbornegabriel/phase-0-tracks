class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		print "That was a good #{cookie}!"
	end

	def initialize
		puts "Initializing Santa instance here"
	end
end

Jolly = Santa.new



Jolly.speak
Jolly.eat_milk_and_cookies("oatmeal cookie")