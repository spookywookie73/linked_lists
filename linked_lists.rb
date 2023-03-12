class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList

  def initialize(value)
    @head = Node.new(value)
  end

  def append(value)
    current_node = @head    # start with head node
    while current_node.next_node != nil   # loop through nodes until you
      current_node = current_node.next_node # reach the last one
    end
    current_node.next_node = Node.new(value)  # create a new node after the last node
  end

  def prepend(value)
    if @head == nil
      current_node.next_node = Node.new(value)  # create a node if there are none
    else
      @head = Node.new(value, @head)  # create a new head node
    end
  end

  def size
    current_node = @head
    count = 1
    while current_node.next_node != nil   # loop through the nodes until you
      current_node = current_node.next_node # reach the last one, incrementing the count
      count += 1
    end
    return count
  end

  def head
    current_node = @head
    return "The first node is #{current_node.value}"
  end

  def tail
    current_node = @head
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    return "The last node is #{current_node.value}"
  end

  def at(index)
    if index < 0 || index > self.size - 1
      return "That index number is not available"
    end  
    current_node = @head
    index.times do    # loop through the nodes the index number of times
      current_node = current_node.next_node
    end
    return "The index number's value is #{current_node.value}"  # return the node value the loop stopped at
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node == nil # loop through the nodes until
      current_node = current_node.next_node   # you reach the second last node
    end
    current_node.next_node = nil  # make the last node = nil
  end

  def contains?(value)
    current_node = @head
    return true if value == current_node.value  # check if the first node's value = the given value
    while current_node.next_node != nil   # loop through the nodes
      current_node = current_node.next_node
      return true if value == current_node.value  # return true if any of the nodes contain the given value
    end
    return false
  end

  def find(value)
    current_node = @head
    index = 0   # if the first node = the given value, return the index number
    return "The index number is #{index}" if value == current_node.value
    while current_node.next_node != nil
      current_node = current_node.next_node # loop through nodes incrementing the index count
      index += 1
      return "The index number is #{index}" if value == current_node.value
    end   # stop the loop at the given value's number and return the index number
    return "nil"  # I used a string nil because non string nil kept leaving a blank space
  end

  def to_s
    current_node = @head
    print "( #{current_node.value} ) -> " # loop through the nodes printing the nodes value as a string
    while (current_node = current_node.next_node)
      print "( #{current_node.value} ) -> "
    end
    if current_node == nil
    p nil
    end
  end

  def insert_at(value, index)
    if index < 0 || index > self.size - 1
      return "That index number is not available"
    end  
    current_node = @head
    new_node = Node.new(value)  # create a new node
    index.times do
      current_node = current_node.next_node # loop through nodes index times
    end
    # the node after the new node becomes the node after the current node
    new_node.next_node = current_node.next_node
    # the node after the current node becomes the new node
    current_node.next_node = new_node
  end

  def remove_at(index)
    if index < 0 || index > self.size - 1
      return "That index number is not available"
    end
    current_node = @head
    index - 1.times do    # loop through the nodes one time less than the index number
      current_node = current_node.next_node
    end
    # the node after the current node becomes the node after the current nodes next node
    current_node.next_node = current_node.next_node.next_node
  end
end
