class Node
  attr_accessor :value
  attr_reader :next

  def initialize(element)
    @value = element
    @next = nil
  end

  def insert_after(node)
    @next = node
  end

  def remove_after
    @next = nil
  end
end
