class Node
  attr_accessor :value, :next

  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end

  def to_s
    value.to_s
  end
end

class LinkedList
  include Enumerable

  attr_accessor :head

  def each
    #if @head is nil the second half of the && expression won't run
    @head && yield(@head)

    next_node = @head.next
    while next_node
      yield(next_node)
      next_node = next_node.next
    end
  end

  def initialize(head = Node.new)
    @head = head
  end

  #add node to the front of the list
  def unshift(new_head)
    new_head.next = @head
    @head = new_head
  end

  def shift
    old_head = @head
    @head = @head.next
    old_head
  end
end

# 2.1: Write code to remove duplicates from a unsorted linked list.

def remove_linked_list_duplicates(list)

end

test_list = LinkedList.new("A")
test_list.unshift("B")
test_list.unshift("C")
test_list.unshift("B")

p test_list.head
