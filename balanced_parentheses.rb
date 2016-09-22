def valid_string?(str)
  str.split("").each do |char|
    char
  end
end

p valid_string?("(hello)")
p valid_string?("(hello) (world)")
p valid_string?("((cat)")
p valid_string?(")dog(")
