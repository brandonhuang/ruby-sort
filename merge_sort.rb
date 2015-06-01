# Sort the array from lowest to highest
def merge_sort(arr)
  return arr if arr.length <= 1

  # divide the array into equal-sized sublists
  left = []
  right = []

  middle = (arr.length / 2).round

  left << arr[0..middle - 1]
  left.flatten!
  right << arr[middle..arr.length - 1]
  right.flatten!

  # Recursively sort both sublists
  left = merge_sort(left)
  right = merge_sort(right)

  # merge the now-sorted sublists
  merge(left, right)
end

def merge(left, right)
  result = []

  while !left.empty? && !right.empty?
    if left.first <= right.first
      result << left.shift
    else
      result << right.shift
    end
  end

  # if there are any  elements left over on one side
  while !left.empty?
    result << left.shift
  end
  while !right.empty?
    result << right.shift
  end
  return result
end