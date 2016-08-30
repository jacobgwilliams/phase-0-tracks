# 5.5 Solo Challenge
# Jacob Williams

# PSEUDOCODE:
# Take a real name
## Get input from user, request a first and last name.
## Split into an array
# Swap first and last name
## Reverse contents of above array
# Change each vowel to the next vowel in the sequence 'aeiou'
## Iterate to cycle through every vowel and change it to next in sequence
# Change all consonants to next consonant in alphabet 'bcdfghjklmnpqrstvwxyz'
## Iterate to cycle throuh every consonant and change it to next in sequence
# Handle edge cases ('z')
# Deal with upper case letters, perhaps by making everything lower case first, then going up case on the first letter of each word in the joined string.

# Get user name, set downcase, split, and reverse first and last name
def get_name
  puts "What is your first and last name? Please separate with a space."
  name = gets.chomp.downcase.split(' ').reverse.join(' ')
end
reverse_name = get_name
p reverse_name

split_reverse = reverse_name.chars
new_name = ""
split_reverse.map! do |letter|
  if letter == " "
    new_name += " "
  else
    new_name += letter.next
  end
end
p new_name
# DRIVER CODE