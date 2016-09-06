# GPS 2.2
# Jacob Williams

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

# Reflection:
# What did you learn about pseudocode?
# Pesudocoding definitely helps plan ahead so you aren't FYWTG (flailing your way to glory? Is that right?) Regardless, it helped me set a specific plan of action and I imagine would have helped if I came to a point where I wasn't exactly sure the steps I'd need to complete one of the methods.
# What are the tradeoffs of using arrays and hashes for this challenge?
# The only tradeoff I could see is that an array would make this program a lot clunkier. If, for some reason, I made an array of items, and a seperate array for each quantity at respective indeces, or maybe just an array with [item, quantity, item, quatity, etc.] I'd have a lot more work to do iterating through them and implementing them. Hashes make more sense when dealing with items with "quantities" or similar data.
# What does a method return?
# A method returns the value of the last function performed, so I need to be aware of not putting 'puts' or something at the end of a method unless I'm testing.
# How can you pass information between methods?
# INSTANCE VARIABLES! What magic they are! I'm glad I learned about them and their use in this session, because I can definitely think of a few places in previous challenges where I could have made my code a lot DRYer if I'd known exactly how to use them.
# What concepts were solidified in this challenge and what is still confusing?
# I'd say the use of instance variables for sure, along with basic iteration over hashes and arrays, and also setting default values for parameters. I could definitely still benefit from exploring the other various built-in methods for those data structures and ways to manipulate them. I can't think of what is still confusing, but I'm sure something will come up as a road block. If anything, another solidified concept would be the value of researching when in doubt or unsure of what to do. I wouldn't have found out how to use default arguments in my parameters or how instance variables work otherwise.