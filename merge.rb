def merge_sort(arr)
  return arr if arr.length <= 1
  l,r = arr.each_slice((arr.size/2).round).to_a if arr.size > 2
  merge_sort(r)
  merge_sort(l)
end

p merge_sort([1,7,3,9,5,2])

# merge_sort([4,5,2,3) => [2,3,4,5]