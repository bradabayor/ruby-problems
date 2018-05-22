require_relative 'node.rb'

class LinkedList
attr_reader :head

  def initialize(val, pointer = nil)
    @head = Node.new(val, pointer)
  end

  def append(val)
    current_node = @head
    while current_node.pointer != nil #move down list
      current_node = current_node.pointer
    end
    current_node.pointer = Node.new(val, nil)
  end

  def prepend(val)
    previous_head = @head #preserve head node
    @head = Node.new(4)
    @head.pointer = previous_head
  end

  def size
    Node.node_count
  end

  def tail
    current_node = @head
    while current_node.pointer != nil #move down list
      current_node = current_node.pointer
    end
    current_node
  end

  def at(index)
    current_node = @head
    index.times do #move down list
      current_node = current_node.pointer
    end
    current_node
  end

  def pop
    current_node = @head
    while current_node.pointer != nil #move down list
      current_node = current_node.pointer
    end
    current_node = nil
  end

  def contains?(val)
    current_node = @head
    while current_node.pointer != nil #move down list
      return true if current_node.value = val
      current_node = current_node.pointer
    end
    return false
  end
end