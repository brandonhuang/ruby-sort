def bubble_sort(arr)
  if arr.empty?
    return []
  end
  swapped = true
  while swapped
    swapped = false
    arr.each_index do |i|
      if arr[i+1] == nil
        #do nothing
      elsif arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
  end
  return arr
end