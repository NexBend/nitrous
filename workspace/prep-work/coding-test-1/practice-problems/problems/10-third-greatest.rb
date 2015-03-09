# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  num1 = nil
  num2 = nil
  num3 = nil
  idx = 0
  
  while idx < nums.length
    value = nums[idx]
    if num1 == nil || value > num1
      num3 = num2
      num2 = num1
      num1 = value
    elsif num2 == nil || value > num2
      num3 = num2
      num2 = value
    elsif num3 == nil || value > num3
      num3 = value
    end
    idx +=1
  end
    return num3
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
