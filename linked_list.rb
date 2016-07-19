require_relative 'node'

class LinkedList

  attr_reader :first_node #for testing only

  def initialize
    @first_node = nil
  end

  def insert_first(element)
    new_node = Node.new(element)
    new_node.insert_after(@first_node)
    @first_node = new_node  
  end

  def remove_first
    return nil if @first_node == nil
    @first_node = @first_node.next
  end

  def insert_last(element)
    new_node = Node.new(element)
    current = @first_node 
    until current.next == nil
      current = @first_node.next
    end
    current.insert_after(new_node)
  end

  def remove_last
    return nil if @first_node == nil
    current = @first_node
    until current.next.next == nil
      current = @first_node.next
    end
    current.remove_after
  end

  def get(index)
    current = @first_node 
    index.times do
      current = current.next
    end
    current.value
  end

  def set(index, element)
    current = @first_node 
    index.times do
      current = current.next
    end
    current.value = element
  end

  def insert(index, element)
    new_node = Node.new(element)
    current = @first_node 
    index.times do
      current = current.next
    end
    new_node.insert_after(current.next)
    current.insert_after(new_node)    
  end

  def size
    current = @first_node
    count = 0
    until current == nil
      count += 1
      current = current.next
    end
    count
  end
end
