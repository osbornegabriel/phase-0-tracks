# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#  def speak(number)
#   	number.times do puts "Woof!"
#   	end 
#   end

#   def rolls_over
#   	puts "Rolls over!"
#   end 

#   def dog_years(age)
#   	dog_age = age/7
#   	return dog_age
#   end 

#   def stubborn
#   	p nil 
#   end 	

#   def initialiez 
#   	print "Initializing a new puppy instance..."
#   end 	

# end

# cookie = Puppy.new

# cookie.fetch("ball")
# cookie.speak(5)
# cookie.rolls_over
# p cookie.dog_years(5)
# cookie.stubborn 
#cookie.initialiez


class No_fun
  def initialize
    puts "*Alarm goes off*"
  end

  def traffic(integer)
    wasted_time = integer*3
    return wasted_time
  end

  def no_lunch_break
    puts "Vending snack"
  end
end

50.times do
  No_fun.new
end