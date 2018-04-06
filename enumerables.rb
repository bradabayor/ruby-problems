module Enumerable
  def my_each
    self.size.times { |i| yeild(self[i]) }
  end