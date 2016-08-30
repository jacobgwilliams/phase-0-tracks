# def new_method
#   puts "Before status"
#   yield("test string")
#   puts "After status"
# end

# new_method do |x|
#   puts "this is #{x} block"
# end

fruits = ["apples", "pears", "oranges", "bananas"]
contact_info = {
  name: "George Jetson",
  age: 45,
  address: "111 Space Lane",
  email: "gjetson@gmail.com"
}

#.each on array
fruits.each do |fruit|
  puts "#{fruit} are tasty!"
end
#.each on a hash
contact_info.each do |label, info|
  puts "#{label}: #{info}"
end

#.map!
p fruits
fruits.map! do |fruit|
  fruit.upcase
end
p fruits

# RELEASE 2

numbers = [1, 2, 3, 4, 5, 2562345, 75, 434]

# 1. delete_if

p numbers.delete_if{|num| num%2 == 0 }

# 2. find (filter for specific items)

# p numbers.delete_if{|num| num > 10}

p numbers.keep_if {|num| num == 3 }

# 3. A different method that filters a data structure for only items satisfying a certain condition

numbers = [1, 2, 3, 4, 5, 2562345, 75, 434]
p numbers.find_all {|num| num%2 != 0}
# numbers.select also works

# 4. method that removes items from a structure until condition in the block is false

numbers = [1, 2, 2562345, 3, 4, 5, 75, 434]
p numbers.drop_while {|num| num < 6}