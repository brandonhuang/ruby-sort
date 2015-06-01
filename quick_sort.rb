def quick_sort(arr)
  return arr if arr.length <= 1

  pivot = arr.delete_at(arr.length / 2)

  left = []
  right = []

  arr.each do | num |
    if num <= pivot
      left << num
    else
      right << num
    end
  end

  left = quick_sort(left)
  right = quick_sort(right)

  result = left << pivot << right
  return result.flatten!
end