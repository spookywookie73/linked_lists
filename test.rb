require_relative 'linked_lists.rb'

bob = LinkedList.new(1)
bob.append(2)
bob.append(3)
bob.prepend(5)
bob.append(4)
bob.prepend(6)
bob.to_s
puts "The size of the Linked List is #{bob.size}"
puts bob.head
puts bob.tail
puts bob.at(3)
puts bob.at(8)
bob.pop
bob.to_s
puts bob.contains?(3)
puts bob.find(3)
bob.insert_at(4, 1)
bob.to_s
bob.remove_at(2)
bob.to_s