arr = [19,51,10,44,32,18,21,88]

(arr.length - 1).times do
  arr.drop(1).each_with_index do |i, idx|
    j = arr[idx]
    if j > i 
      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
    end
    p arr
  end
end