def bubble_sort(arr)
  looper = false
  
  until looper == true
  looper = true
(arr.length - 1).times do |i|
    if arr[i] > arr[i+1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      looper = false
    end
  end
end
  arr
end


