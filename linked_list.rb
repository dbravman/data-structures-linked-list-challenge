require_relative 'node'

class LinkedList

  attr_reader :first_node, :last_node #for testing only

  def initialize
    @first_node = nil
    @last_node = nil
  end

  def insert_first(element)
    new_node = Node.new(element)
    @last_node = new_node if @last_node = nil 
    new_node.insert_before(@first_node)
    @first_node = new_node 
  end

  def remove_first
    return nil if @first_node == nil
    @first_node = @first_node.next
  end

  # def insert_last(element)
  #   if @first_node == nil
  #     insert_first(element)
  #   else
  #     new_node = Node.new(element)
  #     current = @first_node 
  #     until current.next == nil
  #       current = @first_node.next
  #     end
  #     current.insert_after(new_node)
  #   end
  # end

  def insert_last
    new_node = Node.new(element)
    @first_node = new_node if @first_node = nil 
    new_node.insert_before(@last_node)
    @last_node = new_node 
  end

  def remove_last
    return nil if @last_node == nil
    @last_node = @last_node.previous
  end

  # def remove_last
  #   return nil if @first_node == nil
  #   if @first_node.next == nil
  #     remove_first
  #   else
  #     current = @first_node
  #     until current.next.next == nil
  #       current = current.next
  #     end
  #     current.remove_after
  #   end
  # end

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
