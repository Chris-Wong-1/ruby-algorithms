class Array
  def quicksort
    # Return an empty array if it is empty
    return [] if empty?

    # Pick a pivot point and delete it from the array
    pivot = delete_at(rand(size))

    # Loop through the array comparing elements to the pivot value and sorting them into two sub arrays
    left_array, right_array = partition(&pivot.method(:>))

    # Recursively call quicksort on the sub arrays and return the sorted array
    return *left_array.quicksort, pivot, *right_array.quicksort
  end
end

arr1 = []
arr2 = [0]
arr3 = [2, 1, 3, 2, 1, 2, 3, 2]
arr4 = [2, 4, 7, 8, 1, 9, 6, 5]

p arr1.quicksort
p arr2.quicksort
p arr3.quicksort
p arr4.quicksort
