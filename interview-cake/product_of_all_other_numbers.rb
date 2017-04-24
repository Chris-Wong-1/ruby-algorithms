# You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
# Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.

# For example, given:

#   [1, 7, 3, 4]

# your function would return:

#   [84, 12, 28, 21]

# by calculating:

#   [7 * 3 * 4,  1 * 3 * 4,  1 * 7 * 4,  1 * 7 * 3]

# Do not use division in your solution.

# def get_products_of_all_ints_except_at_index(array)
# 	before_product = 1
# 	after_product = 1
# 	before_array = [1]
# 	after_array = [1]

# 	i = 0
# 	j = array.length - 1

# 	while i < array.length
# 		before_product = before_product * array[i]
# 		before_array.push(before_product)
# 		after_product = after_product * array[j]
# 		after_array.unshift(after_product)
# 		i += 1
# 		j -= 1
# 	end

# 	# [1, 7, 3, 4]
# 	# before_array [1, 1, 7, 21, 84]
# 	# after_array [84, 84, 12, 4, 1]

# 	p before_array
# 	p after_array

# 	# products_of_all_ints_except_at_index = []
# 	# k = 0
# 	# while k < array.length
# 	# 	if k == 0 
# 	# 		products_of_all_ints_except_at_index << after_array[0]
# 	# 	elsif k == array.length - 1
# 	# end
# end

def get_products_of_all_ints_except_at_index(array)
	# Make sure there are atleast two integers in the array
	if array.length < 2
		raise IndexError, "Two or more integers are required"
	end

	products_of_all_ints_except_at_index = []

	# For each integer we find the product of all the integers before it, storing the total product so far each time
	product_so_far = 1
	i = 0
	while i < array.length
		products_of_all_ints_except_at_index[i] = product_so_far
		product_so_far *= array[i]
		i += 1
	end

	# For each integer, find the product of all the integers after it. Since each index in products already has the product of all the integers before it, now store the total product of all other integers
	product_so_far = 1
	i = array.length - 1
	while i >= 0
		products_of_all_ints_except_at_index[i] *= product_so_far
		product_so_far *= array[i]
		i -= 1
	end

	return products_of_all_ints_except_at_index
end

test = [1, 7, 3, 4]
get_products_of_all_ints_except_at_index(test)

