def word_unscrambler(str, words)
  letters = str.split("")
  scrambled = words.select {|word| isword?(letters, word) }
end

def isword?(letters, word)
  letters2 = word.split("")
  return true if letters.sort == letters2.sort
end