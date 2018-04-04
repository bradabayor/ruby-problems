class Array
  def bubble_sort_by
    (0..self.size) do |i|
      if yield(self[i]) < 0
        # Switch Values
      else
        next
      end
    end
    self
  end
end

bubble_sort_by(["hi","hello","hey"]) do |left, right|
  left.length - right.length
end