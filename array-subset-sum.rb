# Find the greatest sum of a contiguous sub array of a given array
# The array contains positive and negative integers
# Assume that the smallest possible sum is 0
# First just return the value of the greatest sum
# If possible return the sub-array that has the greatest sum
# This should be possible in both N*N and N big O time

def array_subset_sum(arr)
  greatest_sum = 0
  subset_arr = []
  subset_start = 0
  while subset_start < arr.length - 1
    subset_length = 1
    until subset_start + subset_length > arr.length
      if arr.slice(subset_start, subset_length).inject(0, :+) > greatest_sum
        greatest_sum = arr.slice(subset_start, subset_length).inject(0, :+)
        subset_arr = arr.slice(subset_start, subset_length)
      end
      subset_length += 1
    end
    subset_start += 1
  end
  p subset_arr
  puts greatest_sum
end

test_1 = [1, 2, 3, 4]
test_2 = [1, 1, -1, -1, -1, 1, 1, 1]
test_3 = [-1, 0, 8, 0, -1]
test_4 = [2, 3, -4, 8, 2, -6, 5, 18, 0, -23]

array_subset_sum(test_1)
array_subset_sum(test_2)
array_subset_sum(test_3)
array_subset_sum(test_4)
