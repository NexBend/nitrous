def ordered_vowel_words(str)
  words = str.split(" ")
  ordered_v_words = words.select {|word| ordered_vowel?(word)}
  ordered_v_words.join(" ")
end

def ordered_vowel?(word)
  vowels = ["a", "e", "i", "o", "u"]
  letters_arr = word.split("")
  vowels_arr = letters_arr.select {|letter| vowels.include?(letter)}
  
  (0...(vowels_arr.length - 1)).all? {|i| vowels_arr[i] <= vowels_arr[i + 1]}
  
end