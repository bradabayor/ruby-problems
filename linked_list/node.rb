class Node
  attr_accessor :value, :pointer
  @@node_count = 0

  def initialize(value = nil, pointer = nil)
    @value = value
    @pointer = pointer
    @@node_count += 1
  end

  def self.node_count
    return @@node_count
  end

end