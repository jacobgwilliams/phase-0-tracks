# MPS 5.3 : Iteration
# Meredith Jones and Jacob Williams

# BOTTOM OF RELEASE 0: Writing a method that takes a block.
# def new_method
#   puts "Before status"
#   yield("test string")
#   puts "After status"
# end
# new_method do |x|
#   puts "this is #{x} block"
# end

# RELEASE 1: each, map, and map!
# 1. Declare an array and a hash
fruits = ["apples", "pears", "oranges", "bananas"]
contact_info = {
  name: "George Jetson",
  age: 45,
  address: "111 Space Lane",
  email: "gjetson@gmail.com"
}
# 2. Iterate using .each and .map
#.each on an array
fruits.each do |fruit|
  puts "#{fruit} are tasty!"
end
#.each on a hash
contact_info.each do |label, info|
  puts "#{label}: #{info}"
end
#.map! on an array
p fruits
fruits.map! do |fruit|
  fruit.upcase
end
p fruits

# RELEASE 2: Docs Research for Array and Hash methods that take blocks

numbers = [1, 2, 3, 4, 5, 2562345, 75, 434]

# 1. delete_if (delete items that meet a certain condition)
p numbers.delete_if{|num| num%2 == 0 } # deletes an item if it is not even

# 2. find (filter for items that satisfy a condition)
# p numbers.delete_if{|num| num > 10}
p numbers.keep_if {|num| num == 3 } # keeps if num == 3

# 3. A different method that filters a data structure for only items satisfying a certain condition
numbers = [1, 2, 3, 4, 5, 2562345, 75, 434]
p numbers.find_all {|num| num%2 != 0} # finds even numbers
# NOTE: numbers.select also works

# 4. A method that removes items from a structure until condition in the block is false
numbers = [1, 2, 2562345, 3, 4, 5, 75, 434]
p numbers.drop_while {|num| num < 6} # drops everything before, but not including, 2562345