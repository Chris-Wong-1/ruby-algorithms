# Write a function to compute set intersection of two integer arrays

def intersection(array1, array2)
  arr1 = array1.uniq
  arr2 = array2.uniq

  intersection = []
  arr1.each do |el|
    if arr2.include?(el)
    	intersection << el
    end
  end
  intersection
end

# The first solution has a run time of O(n * n) because the #include? method iterates over each element in the arr2 for each element from arr1.
# It is possible to have a run time of O(n) if a hash is used.

def intersection_hash(array1, array2)
  hash = Hash.new()
  intersection = []

  array1.each do |el|
    hash[el] = true
  end

  array2.uniq.each do |el|
    if hash[el]
      intersection << el
    end
  end

  intersection
end
