require_relative 'linkedlist.rb'

list = LinkedList.new(6)

list.append(10)
list.append(6)
list.prepend(4)
list.append(5)
list.append(3)
list.prepend(8)

p list.inspect

p list.size