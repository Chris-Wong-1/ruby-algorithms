def unique?(str)
  chars = str.split("")
  chars.uniq.length == str.length
end

p unique?("cat")
p unique?("mom")

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

p unique_with_hash?("cat")
p unique_with_hash?("mom")
