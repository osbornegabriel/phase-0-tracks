# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + " Yah-tah!!! :D :D :D"
# 	end
# end

# p Shout.yell_angrily("Green Beans")
# p Shout.yell_happily("Broccoli")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + "! Eugepae!!! :D :D :D"
	end
end

class Belligerent_drunk
	include Shout
end

class Church_lady
	include Shout
end

belligerent_drunk = Belligerent_drunk.new
p belligerent_drunk.yell_happily("Beer? For Me?")

church_lady = Church_lady.new
p church_lady.yell_angrily("Have you no shame")