array = []

(1..1000).each do |i|
  if i % 3 == 0
    array.push(i)
  elsif i % 5 == 0
    array.push(i)
  end
end

puts array.reduce(:+)
