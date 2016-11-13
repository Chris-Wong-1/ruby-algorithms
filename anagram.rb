# Given a dictionary as a array of strings find and return any anagrams of a given word

# Creates a dictionary of anagrams from a array of strings
# Keys are each word's letters sorted alphabetically
# Values are arrays of anagrams
def dictionary_hash(array)
  dictionary = {}
  array.each do |word|
    letters = word.chars.sort.join
    if dictionary.has_key?(letters)
      dictionary[letters] = dictionary[letters] << word
    else
      dictionary[letters] = [word]
    end
  end
  dictionary
end

# Given a dictionary array and a word as a string this method will return anagrams of that word found in the array
def anagrams(array, string)
  dictionary = dictionary_hash(array)
  anagrams = []
  letters = string.chars.sort.join
  if dictionary.has_key?(letters)
    anagrams = dictionary[letters]
  end
  if anagrams.empty?
    "No anagrams were found for #{string}"
  else
    anagrams.each do |word|
      puts word
    end
  end
end

array = ["cat", "act", "dog", "god", "turtle", "bare", "bear"]

anagrams(array, "cat")
