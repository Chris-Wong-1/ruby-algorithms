# You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
# Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.
# input:   [1, 7, 3, 4]
# output:   [84, 12, 28, 21]

def array_products(array)
  products = []
  i = 0
  while i < array.length
    subset = array.map { |e| e }
    subset.slice!(i)
    products << subset.reduce(1, :*)
    i += 1
  end
end
# This is a O(N squared) implementation

def greedy_products(array)
  products = []
  before_products = [1]
  after_products = [1]
  before_product_so_far = 1
  after_product_so_far = 1
  i = 0
  j = array.length - 1
  while i < array.length - 1
    before_product_so_far = before_product_so_far * array[i]
    before_products << before_product_so_far
    i += 1
    after_product_so_far = after_product_so_far * array[j]
    after_products.unshift(after_product_so_far)
    j -= 1
  end

  k = 0
  while k < array.length
    products << before_products[k] * after_products[k]
    k += 1
  end

  products
end
# This is a O(2N) implementation which simplifies to O(N)

arr = [2, 3, 4, 5]
p greedy_products(arr)
