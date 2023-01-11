def merge_sort(arr)
  if arr.length === 1 then
    return arr
  else
    a1 = arr.slice(0,(arr.length / 2).round)
    a2 = arr.slice((arr.length / 2).round,arr.length)
    p a1
    p a2
    merge_sort(arr.slice(0,(arr.length / 2).round))
    merge_sort(arr.slice((arr.length / 2).round,arr.length))
  end
end

test_array = [6,4,5,8,2]
p merge_sort(test_array)