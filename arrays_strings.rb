# 1.1 Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?

def unique?(str)
  chars = str.split("")
  chars.uniq.length == str.length
end

# p unique?("cat")
# p unique?("mom")

def unique_with_hash?(str)
  chars_hash = Hash.new()
  chars = str.split("")
  chars.each do |char|
    if chars_hash[char]
      return false
    else
      chars_hash[char] = true
    end
  end
  return true
end

# p unique_with_hash?("cat")
# p unique_with_hash?("mom")

# 1.2 Check Permutation: Given two strings, write a method to decide if one is a permutation of the other.

def permutation(str1, str2)
  str1.split('').sort == str2.split('').sort
end

# p permutation('cat', 'tac')
# p permutation('cat', 'dog')

# 1.3 URLify: Write a method to replace all spaces in a string with '%20'.

def urlify(str)
  words = str.split(' ')
  words.join('%20')
end

p urlify("the cat in the  hat  ")
