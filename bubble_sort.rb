def bubble_sort(arr)
  if arr.empty?
    return []
  end
  swapped = true
  cutoff = arr.length

  while swapped
    swapped = false
    for i in (0..cutoff)
      if arr[i+1] == nil
        #do nothing
      elsif arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    cutoff -= 1
  end
  return arr
end