# Calculate the factorial recursively
def factorial(n)
  if n == 0
    return 1
  else
    n * factorial(n-1)
  end
end

# Calculate the factorial iteratively
def iterative(n)
  (1..n).inject { |product, n| product * n }
end
