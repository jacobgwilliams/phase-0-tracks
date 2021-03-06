# Get following details from client:
# name (string)
# age (fixnum)
# mobility challenges (bool)
# number of children (fixnum)
# decor theme (string)
# etc. string, int, and bool data
# All keys should be symbols unless a string is absolutely necessary
# Program should also:
# Prompt designer/user for this info
# Convert any user input into appropriate data type
# Print the hash back to screen when designer answers all questions
# Give user opp to update a key. Escape if user says "none." If user enters "decor_theme," program should ask for new key value and update key. (Strings have methods to turn them into symbols.)
# Print latest varsion of hash, exit

client_details = {}

puts "Client Information Form:"
puts "What is the client's first and last name?"
client_details[:name] = gets.chomp
puts "What is the client's age?"
client_details[:age] = gets.to_i
puts "Are they mobility challenged? [y/n]"
answer = gets.chomp
if answer == "y"
  client_details[:mobility_challenge] = TRUE
elsif answer == "n"
  client_details[:mobility_challenge] = FALSE
else
  client_details[:mobility_challenge] = nil
end
puts "How many children do they have?"
client_details[:num_children] = gets.to_i
puts "What kind of decor theme do they want?"
client_details[:decor_theme] = gets.chomp

puts "PROCESSING..."
puts "Client detail sheet:"
p client_details

puts "Do you need to make any updates to the above form? Select a section for editing by entering the 'key' (phrase followed by a colon) and make your edits. Otherwise, type 'exit'."
input = gets.chomp
if input == "exit"
  return
else
  input = input.to_sym
  puts "You chose to edit #{input}. What new data would you like to enter in this field?"
  client_details[input] = gets.chomp
end

puts "Have a good day! Here's your client details:"
p client_details