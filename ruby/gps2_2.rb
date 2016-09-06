# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # get input from the user (string seperated by spaces)
  # split this string into an array (using .split, which splits a string by ' 's)
  # iterate through the array create a hash with each item as the key
  # set default quantity to 0
  # print the list to the console [can you use one of your other methods here?] interpolation and print commands
# output: hash

string = "carrots apples cereal pizza"
@grocery_hash = {}

def create_list(string)
  grocery_array = string.split
  grocery_array.each do |item|
    @grocery_hash[item] = 0
  end
end

create_list(string)

# Method to add an item to a list
# input: item name and optional quantity
# steps: get input from user as string 'item quantity'
# split input and add to hash as a key and value pair
# output: updated hash

def add_item(item, quant=0)
  @grocery_hash[item] = quant
end

add_item("dogfood", 2)
p @grocery_hash

# Method to remove an item from the list
# input: item (key value)
# steps: delete item and quanity from hash (.delete)
# output: updated hash

def remove_item(item)
  @grocery_hash.delete(item)
end

remove_item("apples")
p @grocery_hash

# Method to update the quantity of an item
# input: item name, quantity
# steps: use item name to access hash key and input value to update value
# output: updated hash

def update_quantity(item, quant)
  @grocery_hash[item] = quant
end

update_quantity("cereal", 5)
p @grocery_hash

# Method to print a list and make it look pretty
# input: most updated hash
# steps: use interpolation to print items in a list form as strings
# (iterating through each key/value pair)
# output: a fancy list

def pretty_list
  puts "Your grocery list:"
  @grocery_hash.each do |item, quant|
    puts "- #{item}: #{quant}"
  end
end

pretty_list