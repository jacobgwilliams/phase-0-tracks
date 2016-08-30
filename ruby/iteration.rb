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