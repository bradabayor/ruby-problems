class Array
  def bubble_sort_by
    (0..self.size).times do
      (0..self.size).times do |i|
        @left = self[i]
        @right = self[i + 1]
        if yield < 0
          self[i + 1] = @left
          self[i] = @right
        else
          next
        end
      end
    end
    self
  end
end

["hi","hello","hey"].bubble_sort_by do |left, right|
  left.length - right.length
end