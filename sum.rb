# Given an unsorted array of values find the greatest sum of non consecutive elements

def non_consec_sum(arr)
  incl = 0
  excl = 0
  new_excl = 0

  arr.each do |el|
    new_excl = [incl, excl].max
    incl = excl + el
    excl = new_excl
  end
  [incl, excl].max
end

# p non_consec_sum([1, 2, 3])
# p non_consec_sum([5, 5, 10, 100, 10, 5])

# Given an unsorted array of pos/neg values find the greatest sum of a continuous subset

def subset_sum(arr)
  max_so_far = 0
  max_ending_here = 0

  arr.each do |el|
    max_ending_here = max_ending_here + el
    if max_ending_here < 0
      max_ending_here = 0
    end
    if max_so_far < max_ending_here
      max_so_far = max_ending_here
    end
  end
  max_so_far
end

p subset_sum([-1, -2, 3, 2, -1, 5, -1])
