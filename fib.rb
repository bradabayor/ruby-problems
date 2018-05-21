def fib(num)
  arr = [0, 1]
  loop { num < arr[-1] ? break : (arr << arr[-2] + arr[-1]) }
  arr
end
p fib(100)

def fib_rec(num, arr=nil)
  if arr == nil
    arr = [0, 1]
    fib_rec(num, arr)
  else
    arr << arr[-2] + arr[-1]
    return arr if num < arr[-1]
    fib_rec(num, arr)
  end
end
p fib_rec(100)

def fib_calc(num, arr=nil)
  arr = [0, 1] if arr.nil?
  num < arr[-1] ? (return arr) : fib_calc(num, arr)
end
p fib_calc(100)


# Expect
# fib(5) => [1, 1, 2, 3, 5]
# fib (10) => [1, 1, 2, 3, 5, 8, 13]