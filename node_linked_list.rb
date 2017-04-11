class Node
  attr_accessor :value, :next

  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end

end

class LinkedList

  attr_accessor :head, :tail

  # This linked list must be initialized with a node instance
  def initialize(head)
    @head = head
    @tail = head
  end

  # Insert a new node after the tail of the linked list
  def insert(node)
    @tail.next = node
    @tail = @tail.next
  end

  # Print out all the values of the linked list in order
  def print
    current_node = @head
    while current_node != nil
      puts current_node.value
      current_node = current_node.next
    end
  end

  # Iterate through the linked list and yield to a block
  def each
    if block_given?
      current_node = @head
      while current_node != nil
        yield current_node
        current_node = current_node.next
      end
    end
  end

end

# 2.1: Write code to remove duplicates from a unsorted linked list.

def remove_duplicates(list)
  hash = Hash.new
  unique = nil
  list.each do |node|
    if unique == nil
      unique = LinkedList.new(node)
      hash[node.value] = true
    end
    unless hash.has_key?(node.value)
      unique.insert(node)
      hash[node.value] = true
    end
  end
  unique
end

node_a = Node.new("A")
node_b = Node.new("B")
node_c = Node.new("C")
node_d = Node.new("D")
node_x = Node.new("D")

my_list = LinkedList.new(node_a)
my_list.insert(node_b)
my_list.insert(node_c)
my_list.insert(node_d)
my_list.insert(node_x)

p remove_duplicates(my_list)
