#Release 1 Pseudocoding
#GPS with Paul Roche


# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string into array of strings seprated at spaces
  # convert strings into symbols
  # set array elements as keys for new hash
  	#- iterate array to make each item new key for hash
  # set default quantity 
  # print the list to the console [can you use one of your other methods here?]
# output: hash with key- value pairs corresponding to items and quantity 


def grocery_list
	puts "What would you like to shop for today? ex:(carrots onions spinach)"
	items = gets.chomp
	items_array = items.split(' ')
	items_array.map!{|n| n.to_sym }
	
	groceries = {}
	items_array.each do |x|
		groceries[x] = 1
	end
	p groceries

end

grocery_list
	
	


# Method to add an item to a list
# input: string with single item
# steps: query user for input of item 
	#if user has nothign to add, quit method
	#else if user want to add item, item name is converted to symbol and added to hash array as key
		#query user to add quantity of items needed, 
			# convert quantity to integer
			#add quantity as value to hash at key
#print the updated hash with new item included 
			
# output: updated list with new items

# Method to remove an item from the list
# input: string response from prompt 
# steps: query user "Do you want to delete any items?"
# get string from user
# convert string to sym 
# check if input matches any key in hash (.has_key?)
	#if true then delete key value pair 
	#if false then ask for another key 
# print updated hash
# output: updated hash 

# Method to update the quantity of an item
# input: string from user
# steps: query user if they want to change item quant
# get string from user (key of the value)
# convert string to symbol
# reference key
# query "what would you like to change quantity to?"
# get new quantity from user
# convert input to integer
# change quantity of key-value to new integer
# print updated hash
# output: updated hash with new value @key 

# Method to print a list and make it look pretty
# input: hash name
####pp(obj)             #=> obj
# steps: query user "would you like a readable printout of your grocery list?"
# get user input, hash name
# *check if pretty print method works*
# print hash 
# output: pretty printed hash 