class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  #attr_accessor :head

  def initialize(value)
    @head = Node.new(value)
  end

  def append(value)
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value)
  end

  def prepend(value)
    if @head == nil
      current_node.next_node = Node.new(value)
    else
      @head = Node.new(value, @head)
    end
  end

  def size
    current_node = @head
    count = 1
    while current_node.next_node != nil
      current_node = current_node.next_node
      count += 1
    end
    puts "The total number of nodes is #{count}"
  end

  def head
    current_node = @head
    puts "The first node is #{current_node.value}"
  end

  def tail
    current_node = @head
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    puts "The last node is #{current_node.value}"
  end

  def print_list_as_array
    current_node = @head
    array = []
    array.push(current_node.value)
    while (current_node = current_node.next_node)
      array.push(current_node.value)
    end
    p array
  end
  
end
