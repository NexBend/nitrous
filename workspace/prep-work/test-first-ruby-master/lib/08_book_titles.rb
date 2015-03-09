class Book
  def title=(title)
    @title = title
  end
  
  def title
    little_words = ['A', 'An', 'Of', 'The', 'And', 'Over', 'In']  #must be capitalized so we can find them!
    words = @title.split(' ').map{|x| x.capitalize} #capitalize every word first
    
    finish = [].push(words[0])      #keep the first words
    
    words.drop(1).each do |y|      #find the little words
      if little_words.include?(y)
        finish << y.downcase
      else
        finish << y
      end
    end
    @title = finish.join(' ')
  end
end
