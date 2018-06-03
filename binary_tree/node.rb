class Node
  attr_accessor :value, :left, :right

  def initialize(value, right=nil, left=nil, parent=nil)
    @value = value
    @right = right
    @left = left
    @parent = parent
  end

  def insert(new_value)
    case new_value <=> value
    when 0 then return false
    when -1 then left ? left.insert(new_value) : self.left = Node.new(new_value)
    when 1 then right ? right.insert(new_value) : self.right = Node.new(new_value)
    end   
  end

  def inspect
    "{#{value}::#{left.inspect}|#{right.inspect}}"
  end
end

class BST
  attr_accessor :root, :value, :queue

  def initialize(arr)
    @root = Node.new(arr[0])
    arr.each do |num|
      @root.insert(num)
    end
  end

  def inspect
    "BST => #{@root.inspect}"
  end

  def breadth_first_search(search_value)
    queue = [@root]
    until queue.empty?
      return true if queue[0].value == search_value
      queue << queue[0].left if !queue[0].left.nil?
      queue << queue[0].right if !queue[0].right.nil?
      queue.shift
    end
    nil
  end

  def depth_first_search(search_value)
    stack = [@root]
    current_node = stack[0]
    until stack.empty?
      return true if current_node.value == search_value
      if current_node.left.nil?
        current_node = stack.last
        stack.slice!(-1)
      else
        stack << current_node.right unless current_node.right.nil?
        current_node = current_node.left
      end
    end
    nil
  end
end

tree = BST.new([3,6,4,1,8,9,3,4,5])

p tree.inspect

p tree.breadth_first_search(4)

p tree.depth_first_search(2)
