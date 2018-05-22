require_relative 'node.rb'

class LinkedList
attr_reader :head

  def initialize(val, pointer = nil)
    @head = Node.new(val, pointer)
  end

  def append(val)
    current_node = @head
    while current_node.pointer != nil
      current_node = current_node.pointer
    end
    current_node.pointer = Node.new(val, nil)
  end

  def prepend(val)
    previous_head = @head
    @head = Node.new(4)
    @head.pointer = previous_head
  end

  def size
    Node::node_count
  end
end