# Find the longest palindrome substring from a given string
# A O(n^2) time and 0(1) space solution

def longest_substring_palindrome(str)
  max_length = 1
  start = 0
  low = 0
  high = 0
  length = str.length
  # One by one consider each character as the center point of an even and odd length palindrome
  i = 1
  until i == length
    # Find the longest even length palindrome with center points i-1 and i
    low = i - 1
    high = i
    while low >= 0 && high < length && str[low] == str[high]
      if high - low + 1 > max_length
        start = low
        max_length = high - low + 1
      end
      low -= 1
      high += 1
    end

    # Find the longest odd length palindrome with center point as i
    low = i - 1
    high = i + 1
    while low >= 0 && high < length && str[low] == str[high]
      if high - low + 1 > max_length
        start = low
        max_length = high - low + 1
      end
      low -= 1
      high += 1
    end

    i += 1
  end
  "The longest substring palindrome is #{str[start...(start + max_length)]} and it's length is #{max_length}"
end

p longest_substring_palindrome('forgeeksskeegfor')
