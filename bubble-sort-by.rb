class Array
  def bubble_sort_by
    (self.size - 1).times do
      (self.size - 1).times do |i|
        if yield(self[i], self[i + 1]) > 0
          self[i + 1] = self[i]
          self[i] = self [i + 1]
        else
          next
        end
      end
    end
    p self
  end
end

["hi","hello","hey"].bubble_sort_by do |left, right|
  left.length - right.length
end