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
vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvwxyz"
def get_name
  puts "What is your first and last name? Please separate with a space."
  name = gets.chomp.downcase.split(' ').reverse.join(' ')
end
reverse_name = get_name

split_reverse = reverse_name.chars
new_name = ""
split_reverse.map! do |letter|
  if letter == " "
    new_name += " "
  elsif letter.scan(/[aeiou]/).join == "a" ||
    letter.scan(/[aeiou]/).join == "e" ||
    letter.scan(/[aeiou]/).join == "i" ||
    letter.scan(/[aeiou]/).join == "o" ||
    letter.scan(/[aeiou]/).join == "u"
    index = vowels.index(letter)
    new_name += vowels[index + 1]
  elsif letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "b" || letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "c" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "d" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "f" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "g" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "h" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "j" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "k" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "l" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "m" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "n" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "p" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "q" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "r" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "s" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "t" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "v" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "w" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "x" ||
    letter.scan(/[bcdfghjklmnpqrstvwxyz]/).join == "y"
    index = consonants.index(letter)
    new_name += consonants[index + 1]
  elsif letter == "z"
    new_name += "b"
  else
    p "ERROR, UNRECOGNIZED CHARACTER"
  end
end

capitalized_name_array = new_name.split(' ').map! {|name| name.capitalize}
p capitalized_name = capitalized_name_array.join(' ')