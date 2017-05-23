# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
	#Create blank hash entitled grocery_list
	#single variable for parameter in method
	#Use .split, place items into array
	#Use .each method to place hash, set value to 1 for each item
	#yield?
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]


def create_list(list, string_of_items)
	list = {}
	list_array = string_of_items.split(" ")
	list_array.each do |item|
		item_key = item.to_sym
		list[item_key] = 1		
	end
	return list
end

# food = {}
p create_list(food, "apple banana peanuts")
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
	# 3 variables for method - (list, item_name, quantity=0)
	# list[item_name] = quantity
# output: updated hash

# Method to remove an item from the list
# input: use (list, item_name) for input
# steps: use list[item_name] with .delete method to remove value and key
# output: updated hash

# Method to update the quantity of an item
# input: 3 parameters for method - (list, item_name, new_quantity)
# steps: Add new_quantity to item_name, using: list[item_name] = new quantity
# output: updated value in hash

# Method to print a list and make it look pretty
# input: hash
# steps: p hash (use .each method)
# output: puts "You have #{value} many #{key}"