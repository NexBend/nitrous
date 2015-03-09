def translate(words)
  vowels = ["a","e","i","o","u","y"]
  good_array = []
  array_words = words.split(' ')
  
  
  array_words.each do |y|    #array of words
    word = y.split('')        #array of letters
    idx = 0                     #there's gotta be a better way, but I get confused working on an array of strings
    translated = false

    while translated == false  
    if word[idx] == "q"
        good_array << word.drop(2).push('q','u','a','y').join 
        translated = true
    end
    
      if vowels.include?(word[idx])              #start with a vowel?
        good_array << word.push('a','y').join 
        translated = true
    end
    
      while translated == false                  #now working on 2nd letter and beyond
        idx +=1
        if word[idx] == "q"
          good_array << word.drop(idx+2).push((word[0..idx].join),'u','a','y').join 
          translated = true
        end 
        
        if vowels.include?(word[idx])
          good_array << word.drop(idx).push((word[0..idx-1].join),'a','y').join
          translated = true
        end
      end
    end  
  end

  return good_array.join(' ')
end
    