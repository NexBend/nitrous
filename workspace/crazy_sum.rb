def crazy_sum(numbers)
  idx = 0
  i = 0
  result = 0
  while idx < numbers.length
    result += (numbers[idx].to_i * idx)
    idx +=1
  end
  
  
  return result

end

puts(
  crazy_sum([2,3,5,2])
)