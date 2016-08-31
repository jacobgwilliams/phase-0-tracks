arr = [1, 2, 3, 4, 5]

# PSEUDOCODE
# Loop through the items in the array
# match search_num to returned item
# if search_num == returned item
# return item index
# use a counter (if start from 0)

def search_array(arr, search_num)
  # arr.index(search_num)
  index = 0
  while index < arr.length
    if arr[index] != search_num
      index += 1
    elsif arr[index] == search_num
      return index
    else
      return nil
    end
  end
end
p search_array(arr, 8)

# create an array for list of numbers
# num is the number of times to execute the math
# adding the last two numbers
# array[-1] + array[-2]
# place result of above into array

# RELEASE 1: Fibonacci Numbers
# Conditionals num = 1 or num = 2

def fib_calc(num)
  counter = 0
  array = []
  if num == 1
    array << 0
  else
    array = [0, 1]
  while counter < num - 2
    new_num = array[-1] + array[-2]
    array << new_num
    counter += 1
  end
  array
  end
end

# p fib_calc(1)
# p fib_calc(2)
# p fib_calc(6)
# p fib_calc(15)
test_var = fib_calc(100)
p test_var[-1] == 218922995834555169026