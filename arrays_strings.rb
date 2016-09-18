def unique?(str)
  chars = str.split("")
  chars.uniq.length == str.length
end

p unique?("cat")
