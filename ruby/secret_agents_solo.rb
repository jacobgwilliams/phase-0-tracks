# Jacob Williams 4.6
# Release 2: Build an encrypting device
#

# NOTE: This is an attempt at this project on my own, I wanted to see if I could do it after my paired assignment. Paired originally with Allain Dollete.

# ENCRYPT
# 1. advances every letter of a string one character forward
# 2. every space character remains a space character
# PSEUDOCODE 1
# Make a loop that goes through every character of the string, and calls the method on that advances it (.next)
# Use conditional logic to have it skip the above step if the character is a " ", which should just be returned as " "
# Build out the encryption with a new variable, and add each new character to it (+=)
entry = ""
def encrypt(entry)
  index = 0
  password = ""
  while index < entry.length
# Need to account for spaces in entry string so they don't return "!"
    if entry[index] != " "
# When .next is called on "z", it returns "aa" instead of "a." This needs a special condition to negate that.
      if entry[index] == "z"
        password += "a"
        index += 1
      else
        password += entry[index].next
        index += 1
      end
    else
      password += entry[index]
      index += 1
    end
  end
  return password
end
# DECRYPT
# 1. moves every letter of a string back one (no inherent method for this)
# 2. every space remains a space
# PSEUDOCODE 2
# Structure will be similar, but there is no ".previous" method, so I will have to declare a string variable with the alphabet and use indexing to check it against each current entry using a similar incrementing counter.
def decrypt(entry)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  notpassword = ""
  while index < entry.length
    if entry[index] == " "
      notpassword += entry[index]
      index += 1
    else
      current_letter = entry[index]
      current_letter_index = alphabet.index(current_letter) - 1
      notpassword += alphabet[current_letter_index]
      index += 1
    end
  end
  return notpassword
end

# Release 3: Test the methods:
# p encrypt("abc") # return "bcd"
# p encrypt("zed") # return "afe"
# p decrypt("bcd") # return "abc"
# p decrypt("afe") # return "zed"

# Release 4: A Nested call
# p decrypt(encrypt("swordfish")) # return "swordfish"
# The above works because the decrypt method is calling on the returned value of the nested encrypt method. This could go on endlessly if I nested it as much as I wanted.

# Still to do: Make it interactive. Final release.
# DRIVER CODE
valid_entry = FALSE
while valid_entry == FALSE
  puts "Are you encrypting or decrypting a password? (e/d)"
  answer = gets.chomp
  if answer == "e"
    valid_entry = TRUE
    puts "Enter password to encrypt:"
    entry = gets.chomp
    puts "Encripted password:"
    p encrypt(entry)
  elsif answer == "d"
    valid_entry = TRUE
    puts "Enter password to decrypt:"
    entry = gets.chomp
    puts "Decrypted password:"
    p decrypt(entry)
  else
    puts "Invalid input."
  end
end