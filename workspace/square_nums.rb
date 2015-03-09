def square_nums(max)
  count = 1
  result = 0
  while count * count < max
    result +=1
    count +=1
  end
  return result
    
end

puts(square_nums(5))