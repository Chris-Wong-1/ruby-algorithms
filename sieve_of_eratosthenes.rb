# When given a number this method will find all of the primes up to that number

def sieve_of_eratosthenes(num)
  # Set all flags to true
  flags = Array.new(num + 1, true)
  # Begin with the first prime number
  prime = 2

  while prime <= Math.sqrt(num)
    # Mark multiples of the current prime number as false
    cross_off(flags, prime)
    # Find the next prime number
    prime = next_prime(flags, prime)
  end

end

def cross_off(flags, prime)

end

def next_prime(flags, prime)

end
