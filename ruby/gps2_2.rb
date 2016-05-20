#Release 1 Pseudocoding
#GPS with Paul Roche

#Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string into array of strings seprated at spaces
  # convert strings into symbols
  # set array elements as keys for new hash
  	#- iterate array to make each item new key for hash
  # set default quantity 
  # print the list to the console [can you use one of your other methods here?]
# output: hash with key- value pairs corresponding to items and quantity 
#item_adder(grocery_list)
	
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




def init_items(grocery_list)
	grocery_list = {}
	puts "What would you like to shop for today? ex:(carrots onions spinach)"
	items = gets.chomp.downcase
	items_array = items.split(' ')
	items_array.map! do |g|
		puts "How many #{g} do you need"
		quant = gets.chomp.to_i
		grocery_list[g.to_sym] = quant
	end
		puts "Grocery List:" 
	grocery_list.each{|g,q| puts "#{q} #{g}"}
	
end


def item_adder(grocery_list)
	puts "Would you like to add an item to the list? Enter yes or no."
		input = gets.chomp.downcase
		
case input
 	when "yes"
		puts "What item would you like to add?"
		new_item = gets.chomp
		puts "How many #{new_item} would you like?"
		quantity = gets.chomp 
	
		grocery_list[new_item.to_sym] = quantity.to_i

		puts "Grocery List:"
		grocery_list.each{|g,q| puts "#{q} #{g}"}
	when "no"
	puts "Thank you"
	
	end
end


def item_remover(grocery_list)
	puts "Would you like remove an item from the list? Enter yes or no'."
	input = gets.chomp.downcase
	
	case input
	when "yes" 
		puts "Please enter an item on the list that you would like to remove"
		rem_item = gets.chomp
	 	grocery_list.delete(rem_item.to_sym)
	 
		puts "Grocery List:" 
		grocery_list.each{|g,q| puts "#{q} #{g}"}
	when "no"
	puts "Thank you"


	end
	
end
	
def quant_changer(grocery_list)
	puts "Would you like to change the quantity of an item on your list? Enter yes or no."
	input = gets.chomp
	case input 
	when "yes" 
		puts "Please enter the item whose quantity you would like to change."
		item = gets.chomp
		puts "You currently have a quantity of #{grocery_list[item.to_sym]} #{item}.  How many #{item} would you like instead?"
		quant = gets.chomp
		grocery_list[item.to_sym] = quant
		puts "Grocery List:"
		grocery_list.each{|g,q| puts "#{q} #{g}"}
	when "no"
		puts "Thank you"
		
	end
	
end

def print_list(grocery_list)
	puts ""
	puts "Grocery List:"
	grocery_list.each{|g,q| puts "#{q} #{g}"}
end

g = Hash.new

g = init_items(g)
item_adder(g)
item_remover(g)
quant_changer(g)
print_list(g)