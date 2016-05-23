class TodoList
	def initialize
		@list = ["do the dishes", "mow the lawn"]
	end

	def get_items
		print @list
	end

	def add_item(item)
		@list << item
	end

	def delete_item(item)
		@list.delete(item)
	end

	def get_item(number)
		@list.index(number.to_i)
	end
end
# stores the list items given on initialization
# 	adds an item to the list
# 	def add_item
#deletes an item
#retrieves an item by index

#-----------DRIVER CODE FOR TESTING--------------

# # Test 1- should store the liste items given on initialization calling list.get_items
list = TodoList.new
p list.get_item(0)

#Test 2 - add an item to the list 
# list.add_item("mop")
# list.get_items

#Test 3 - deletes an item from the list
# list.delete_item("do the dishes")
# list.get_items

#Test 4- retrieves an item by index