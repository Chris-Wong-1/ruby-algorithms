class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next  = nil
  end

end

def reverseList(head_of_list)
  current = head_of_list
  previous = nil
  next_node = nil

  while current
    next_node = current.next

    current.next = previous

    previous = current

    current = next_node
  end

  return previous
end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)

a.next = b
b.next = c

p reverseList(a)
