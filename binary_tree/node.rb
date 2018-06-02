class Node
  attr_accessor :value, :left, :right

  def initialize(value, root=false, right=nil, left=nil)
    @value = value
    @right = right
    @left = left
    @root = root
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

  def build_tree(arr)
    arr.each { |value| self.insert(value) }
  end

  def breadth_first_search(search_value)

  end
end

class BST
  attr_accessor :root

  def initialize(arr)
    @root = Node.new(arr[0])
    arr.drop(1).each do |num|
      @root.insert(num)
    end
  end

  def inspect
    "BST => #{@root.inspect}"
  end
end



tree = BST.new([3,6,4,1,8,9,3,4,5])

p tree.inspect