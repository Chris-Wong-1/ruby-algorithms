# Implement a first in last out stack

class Stack
  def initialize
    @values = []
  end

  def is_empty?
    @values.empty?
  end

  def add(item)
    @values.push(item)
  end

  def remove
    @values.pop
  end

  def size
    @values.length
  end

end

test = Stack.new

p test.is_empty?
test.add('cat')
test.add('dog')
p test.size
p test.remove
p test.size
