module Enumerable
  
  def my_each
    for i in self
      yield(i)
    end
  end
  
  def my_each_with_index
    i = 0
    while i < self.size do
      yield(self[i], i)
      i += 1
    end      
  end
  
  def my_select
    selected = []
    self.my_each do |i|
      if yield(i) == true
        selected << i
      end
    end
    selected
  end
  
  def my_all?
    self.my_each do |i|
      yield(i) == true ? next : (return false)
    end
    true
  end
  
  def my_any?
    self.my_each do |i|
      yield(i) == true ? (return true) : next
    end
    false
  end
  
  def my_none?
    self.my_each do |i|
      yield(i) == true ? (return false) : next
    end
    true
  end
  
  def my_count(*args)
    count = 0
    if block_given?
      self.my_each do |i|
        yield(i) == true ? (count += i) : next
      end
    elsif args.empty?
      self.my_each do |i|
        count += i
      end
    else
      arg = args[0]
      self.my_each do |i|
        i == arg ? (count += i) : next
      end
    end
    count
  end
  
  def my_map
    arr = []
    self.my_each do |i|
      arr << yield(i)
    end
    arr
  end
  
  def my_inject(inital = 0)
    value = inital
    self.my_each do |i|
      value += yield(value, i)
    end
    value
  end
  
end

[1,2,3].my_inject { |sum, n| sum + n }