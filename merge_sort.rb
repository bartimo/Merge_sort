require 'benchmark'

def merge_sort(array)
  return array if array.length <= 1
  left_array = merge_sort(array.slice(0, (array.length / 2).round))
  right_array = merge_sort(array.slice((array.length / 2).round, array.length))
  merge(left_array, right_array)
end
  
def merge(left, right, result = [])
  result = []
    for i in 1..left.size + right.size do
      if left.empty?
        result.push(right.shift)
      elsif right.empty?
        result.push(left.shift)
      elsif left[0] < right[0]
        result.push(left.shift)
      else
        result.push(right.shift)
      end
    end
    result
end

rand_array = Array.new(100) {|i| rand(100)}
n = 10000


Benchmark.bm do |benchmark|
  benchmark.report("Merge Sort") do
    n.times do
      merge_sort(rand_array)
    end
  end

  benchmark.report("Standard Sort") do
    n.times do
      rand_array.sort
    end
  end
end