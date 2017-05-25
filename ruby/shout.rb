module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + " Yah-tah!!! :D :D :D"
	end
end

p Shout.yell_angrily("Green Beans")
p Shout.yell_happily("Broccoli")