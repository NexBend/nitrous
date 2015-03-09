def crazy_nums(max)
  result = []
  idx = 0 
  
  while idx < (max)
    if idx % 3 == 0
      if idx % 5 != 0
        
        result.push(idx)
        
      end
    end
    if idx % 5 == 0
      if idx % 3 != 0
        
        result.push(idx)
       
      end
    end
    idx +=1
  end
  
    return result
end
  
 puts(crazy_nums(20))