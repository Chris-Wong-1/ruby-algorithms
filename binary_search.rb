# The array given to the binary_search function should already be sorted
# The value is the element in the array that is being searched for

def binary_search(array, value)
  low = 0
  high = array.length - 1

  while (low <= high)
    mid = low + ( (high-low) / 2 )

    if array[mid] == value
      return mid
    elsif array[mid] < value
      low = mid + 1
    else
      high = mid - 1
    end
  end

  return "Value not found in given array"
end
