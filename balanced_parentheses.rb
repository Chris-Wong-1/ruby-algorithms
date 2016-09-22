def valid_string?(str)
  stack = []
  str.split("").each do |char|
    if char == "("
      stack.push(char)
    elsif char == ")"
      if stack.empty?
        return false
      else
        stack.pop
      end
    end
  end
  stack.empty?
end

p valid_string?("(hello)")
p valid_string?("(hello) (world)")
p valid_string?("((cat)")
p valid_string?(")dog(")
p valid_string?("((((()))))")
p valid_string?("((((())))))")
