class Fixnum
  def in_words
    hash_of_numwords = {
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19 => "nineteen",
      18 => "eighteen",
      17 => "seventeen", 
      16 => "sixteen",
      15 => "fifteen",
      14 => "fourteen",
      13 => "thirteen",              
      12 => "twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one",
      0 => "zero"
      }
    
    scale = {1=>"hundred", 2 =>"thousand", 3=>"million", 4=>"billion", 5=>"trillion"}
    
    num = self
    str = [] 
    by_three = []
    x_count = 1
    
    
    if hash_of_numwords.include?(self)
      return hash_of_numwords[self] 
      
    elsif num.to_s.size < 3                                        #Two digit numbers
      hash_of_numwords.each do |key, value|
        return value + ' ' + (num-key).in_words if key < num
      end
      
    else                                                            #split number into groups of 3
      by_three = num.to_s.reverse.scan(/.{1,3}/).reverse            #lots of reversing to get this to line up correctly
      by_three = by_three.map {|x| x.reverse}
      
      by_three.reverse.each do |x|                                    #starting with the lowest set -000-
        three_split = x.split('')
        
        if x.length <= 2                                              #handle a 2 digit number
            str.unshift(x.to_i.in_words + ' ' + scale[x_count])
            x_count += 1
         end
        
        if x != '000' && x.length == 3                                 #begin 3 digit madness
          
          if hash_of_numwords.include?(three_split[1..2].join('').to_i) && three_split[1..2].join('').to_i != 0
            
            str.unshift(scale[x_count]) if x_count > 1                 #this section for 2 digit in a 3 digit body -010-
            
            str.unshift(hash_of_numwords[three_split[1..2].join('').to_i])
            
          else
            str.unshift(scale[x_count]) if x_count > 1                 #1s then 10s
            
            str.unshift((three_split[2].to_i).in_words) if three_split[2].to_i != 0
            three_split[2] = '0'
        
            str.unshift((three_split[1..2].join('').to_i).in_words) if three_split[1..2].join('').to_i != 0 
            three_split[1] = '0'
          end
        
          str.unshift((three_split[0].to_i).in_words + ' ' + scale[1]) if three_split[0].to_i != 0  #hundreds
          x_count += 1
          
        else
          x_count += 1  #if 000 still increase the scale
        end
    end
      return str.join(' ')
    end
  end
end