def binary_gap(n)
  # Convert the given integer to a string in binary
  binary = n.to_s(2)

  # Split the binary string at 1's
  # This creates an array of string elements of sequential 0's
  gaps = binary.split('1')
  # Remove the last element of the array if the original integer was even. Binary representations of even numbers always end in 0
  gaps.pop if n % 2 == 0

  return 0 if gaps.empty?

  p gaps.map { |el| el.length }.max
end

binary_gap(5)
