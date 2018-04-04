def bubble_sort(arr)
  (arr.length - 1).times do
    arr.drop(1).each_with_index do |j, i|
      x = arr[i]
      if x > j 
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
  end
  arr
end