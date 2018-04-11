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
      if yield(self[i - 1]) == true
        selected << self[i - 1] 
      end
    end
    selected
  end

end
