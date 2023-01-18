require 'pry-byebug'

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

test_array = [6,4,5,8,2,7,4,1,8]

p merge_sort(test_array)
