def make_red
	puts "Red is the only color for cars"
	yield("corvette","lamburgini")
	puts "All the cars red!"
end

make_red { |car1, car2| puts "#{car1} is now red! #{car2} is also red!"}