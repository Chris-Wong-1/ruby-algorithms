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

p non_consec_sum([1, 2, 3])
p non_consec_sum([5, 5, 10, 100, 10, 5])
