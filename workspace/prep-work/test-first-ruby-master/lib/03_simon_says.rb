def echo(word, repeat = 1)
  return word
end

def shout(word)
  return word.upcase
end

def repeat(word, multiplier = 2)
  return (1..multiplier).collect{word}.join(' ')
end

def start_of_word(word, letters = 1)
  return word[0..letters-1]
end

def first_word(words)
  return words.split(' ')[0]
end

def titleize(words)
  little_words = ['A', 'Of', 'The', 'And', 'Over']
  rerun = words.split(' ').map{|x| x.capitalize}   #CAP ALL WORDS -then uncap selected words- there's gotta be a better way!
  finish = [].push(rerun[0])
  
  rerun.drop(1).each do |i|
    if little_words.include?(i)
      finish << i.downcase                          #DOWNCASE SELECT WORDS
    else
      finish << i
    end
  end
  return finish.join(' ')
end
