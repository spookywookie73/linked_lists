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

  def print_list
    current_node = @head
    puts current_node.value
    while (current_node = current_node.next_node)
      puts current_node.value
    end
  end

end
