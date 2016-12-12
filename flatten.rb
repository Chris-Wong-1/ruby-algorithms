# Write array.flatten
# # [1,[2,3],[4,[5,6]]] => [1,2,3,4,5,6]

def flatten(array)
  flat = []
  array.each do |el|
    if el.is_a?(Array)
      flat.concat(flatten(el))
    else
      flat << el
    end
  end
  flat
end

# This is a recursive implementation.
# On line 8 #concat must be used instead of the shovel operator to join the arrays as one instead of inserting the array as one element.

test_array = [1, [2, 3], 4, [[5,6], 7, [8, 9]]]
p flatten(test_array)
