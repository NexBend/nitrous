

def one_off_words(str, word_list)
  good_words = []
  
  good_words = word_list.select {|word| one_off(str, word) == true}   
  
 
  good_words
end

def one_off(str, word)
  array = str.split('')
  array2 = word.split('')
  off = 0
   
  array.length do |x|
  off += 1 if array[x] != array2[x]
  end
  
  return true if array2.length == array.length && off < 2
    
  
end

  
  
  
  
    

puts one_off_words("moor", ["door", "cat", "moor"])

