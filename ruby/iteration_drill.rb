# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
print_supply = []
z_counter = 0
loop do
	supply_asterisk = "*" + zombie_apocalypse_supplies[z_counter]
	print_supply << supply_asterisk
	z_counter += 1
	break if zombie_apocalypse_supplies[z_counter] == zombie_apocalypse_supplies[-1]
end

supply_asterisk = "*" + zombie_apocalypse_supplies[-1]
print_supply << supply_asterisk

puts print_supply

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
alphabet = "abcdefghijklmnopqrstuvwxyz "
alpha_counter = 0
organized_supplies = []

until alphabet[alpha_counter] == alphabet[-1]
	z_counter = 0
	until zombie_apocalypse_supplies[z_counter] == zombie_apocalypse_supplies[-1]
		if alphabet[alpha_counter] == zombie_apocalypse_supplies[z_counter][0].downcase
			organized_supplies << zombie_apocalypse_supplies[z_counter]
		end
		z_counter += 1
	end
	if alphabet[alpha_counter] == zombie_apocalypse_supplies[z_counter][0]
		organized_supplies << zombie_apocalypse_supplies[z_counter]
	end
	alpha_counter += 1
end

p organized_supplies



# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

#value plugged into method will be compared to each item in zombie_supplies
#Use a counter that keeps changing which item is being compared, call up with index
#false value that's changed to 'true' if there's a match

def supply_check(supply, supplies)
	is_packed = false
	pack_counter = 0
	until supplies[pack_counter] == nil
		if supply == supplies[pack_counter]
			is_packed = true
		end
		pack_counter += 1
	end
	p is_packed
end

supply_check("boots", zombie_apocalypse_supplies)



# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

# Algorhithm plan: 1) Create shrunk_supplies array
# 2) have counter that is less than 5, ends loop if reaches 5
# 3) use counter as index position to move item from zombie_supplies to shurnk_supplies
# 4) zombie_supples = shrunk supplies

# shrunk_supplies = []
# supply_count = 0

# while supply_count < 5
# 	shrunk_supplies[supply_count] = zombie_apocalypse_supplies[supply_count]
# 	supply_count += 1
# end

# zombie_apocalypse_supplies = shrunk_supplies
# p zombie_apocalypse_supplies


# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

#Create combined_supplies, place supplies into that array
#packed = false
#create big counter to check each supply in other_surivor_supplies
#use counter to compare new supply on other_survivor_supplies to combined_supplie
#if there are any == matches, change packed to true
#if packed != true, move that 
#Add one to big counter
#break when other_survivor_supplies[big counter] == nil

other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
combined_supplies = zombie_apocalypse_supplies
supply_counter = 0

until other_survivor_supplies[supply_counter] == nil
	packed = false
	compare_counter = 0
	until combined_supplies[compare_counter] == nil
		if other_survivor_supplies[supply_counter] == combined_supplies[compare_counter]
			packed = true
		end
		compare_counter += 1
	end
	if packed != true
		combined_supplies << other_survivor_supplies[supply_counter]
	end
	supply_counter += 1
end

p combined_supplies


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----


