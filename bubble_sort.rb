def bubble_sort(array)
	n = array.length
	loop do
		sorted = false
		(n-1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i]
				sorted = true
			end
		end

		break unless sorted
	end

	array
end
