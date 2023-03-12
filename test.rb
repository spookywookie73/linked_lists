require_relative 'linked_lists.rb'

bob = LinkedList.new(1)
bob.append(2)
bob.append(3)
bob.prepend(5)
bob.append(4)
bob.prepend(6)
bob.print_list_as_array
puts "The size of the Linked List is #{bob.size}"
puts bob.head
puts bob.tail
puts bob.at(3)
puts bob.at(8)
bob.pop
bob.print_list_as_array
puts bob.contains?(3)
puts bob.find(7)
