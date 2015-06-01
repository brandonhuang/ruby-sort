require_relative 'bubble_sort'
require_relative 'merge_sort'
require_relative 'quick_sort'
require 'benchmark'

# Find the maximum 
def maximum(arr)
  merge_sort(arr).last
end

def minimum(arr)
  merge_sort(arr).first
end
 
# expect it to return 42 below
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return 2 below
result = minimum([2, 42, 22, 02])
puts "min of 2, 42, 22, 02 is: #{result}"

 
# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"
result = minimum([])
puts "min on empty set is: #{result.inspect}"
 
result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"
 
result = maximum([6])
puts "max of just 6 is: #{result}"


random_int = (0..100).to_a.sort{ rand() - 0.5}

puts Benchmark.measure { @default_result = random_int.sort }
puts Benchmark.measure { @quick_result = quick_sort(random_int) }
puts Benchmark.measure { @merge_result = merge_sort(random_int) }
puts Benchmark.measure { @bubble_result = bubble_sort(random_int) }