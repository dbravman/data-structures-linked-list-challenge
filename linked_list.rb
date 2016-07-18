require_relative 'node'

class LinkedList

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
end
