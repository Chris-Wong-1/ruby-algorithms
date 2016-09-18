# 1.1 Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?

def unique?(str)
  chars = str.split("")
  chars.uniq.length == str.length
end

# p unique?("cat")
# p unique?("mom")

def unique_with_hash?(str)
  chars_hash = Hash.new(0)
  chars = str.split("")
  chars.each do |char|
    chars_hash[char] += 1
  end
  chars_hash.values.each do |value|
    if value > 1
      return false
    end
    return true
  end
end

# p unique_with_hash?("cat")
# p unique_with_hash?("mom")

# 1.2 Check Permutation: Given two strings, write a method to decide if one is a permutation of the other.

def permutation(str1, str2)
  str1.split('').sort == str2.split('').sort
end

p permutation('cat', 'tac')
p permutation('cat', 'dog')
