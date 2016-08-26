# Encrypt
# Get user password


# Get word length
# Counter starts at 0, while counter is less than length keep looping indexes
# Will call .next on each character
# Declare a variable for password as an empty string, that adds each letter to the string as we go
# If they index is a space, it just needs to return the space and not .next in order to avoid the ! mark
# Puts the new password
def encryptor(user_pass)
  counter = 0
  output = ""
  while counter < user_pass.length

    if user_pass[counter] == " "
      output += " "
    elsif user_pass[counter] == "z"
      # conditional for "z"
      output += "a"
    else
      output += user_pass[counter].next
    end

    counter += 1

  end

  return output
end




# Decrypt
# Get word length
# Counter starts at 0, while counter is less than length keep looping indexes
# Set variable to alphabet with string input a-z
# Go through each character in alphabet string, check the index of current letter against it

def decryptor(user_decpt)
  counter = 0
  output = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while counter < user_decpt.length

    if user_decpt[counter] == " "
      output += " "
    else
# While
      temp = user_decpt[counter]
      # puts alphabet.index(temp)
# Check alphabet index counter
      ind = alphabet.index(temp)
      output += alphabet[ind-1]
      # alphabet.index(temp)


    end

    counter += 1
  end
return output

end

# DRIVER CODE

# encryptor("abc") # should return "bcd"
# encryptor("zed") # should return "afe"
# decryptor("bcd") # should return "abc"
# decryptor("afe") # should return "zed"

puts decryptor(encryptor("swordfish"))