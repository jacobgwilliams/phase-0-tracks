# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # get input from the user (string seperated by spaces)
  # split this string into an array (using .split, which splits a string by ' 's)
  # iterate through the array create a hash with each item as the key
  # set default quantity to 0
  # print the list to the console [can you use one of your other methods here?] interpolation and print commands
# output: hash



# Method to add an item to a list
# input: item name and optional quantity
# steps: get input from user as string 'item quantity'
# split input and add to hash as a key and value pair
# output: updated hash

# Method to remove an item from the list
# input: item (key value)
# steps: delete item and quanity from hash (.delete)
# output: updated hash

# Method to update the quantity of an item
# input: item name, quantity
# steps: use item name to access hash key and input value to update value
# output: updated hash

# Method to print a list and make it look pretty
# input: most updated hash
# steps: use interpolation to print items in a list form as strings
# (iterating through each key/value pair)
# output: a fancy list