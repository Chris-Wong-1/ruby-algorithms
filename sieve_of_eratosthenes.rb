def sieve_of_eratosthenes(max)
  # Create an array with all numbers 0 through max
  primes = (0..max).to_a
  # Set the first and second position to nil because 0 and 1 are not prime
  primes[0] = nil
  primes[1] = nil

  counter = 0
  primes.each do |num|
    # Skip if nil
    next unless num

    # Break once we exceed the square root of the max value
    break if num * num > max
    counter += 1
    # Start at the square of the current number, and step through
    # Go up to the max value, by multiples of the current number and replace that value with nil in the primes array
    (num * num).step(max, num) { |m| primes[m] = nil }
  end

  # Finally return the compacted array
  puts "Solved for #{max} in #{counter} steps."
  primes.compact
end

def prime?(num)
  sieve_of_eratosthenes(num).include?(num)
end

puts prime?(7)
puts prime?(4)
