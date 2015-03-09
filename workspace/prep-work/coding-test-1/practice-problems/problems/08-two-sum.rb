# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  idx = 0
  idx2 = 1
  solutions = []
  while idx < nums.length
    while idx2 < nums.length
      if nums[idx] + nums[idx2] != 0
        idx2 += 1
      else
        solutions.push(idx,idx2)
        idx2 +=1
      end
    end
    idx +=1
    idx2 = idx +1
  end
  if solutions.length > 1
  return solutions
  else
    return nil
  end
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
