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