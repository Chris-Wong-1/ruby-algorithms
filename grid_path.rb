# Given a n x n grid that is populated with values find the route from the top left corner of the grid to the bottom right corner of the grid with the smallest sum of values. You can only move right, down and diagonal (down and to the right)

# This is a graph problem. We need to set up the nodes of the graph with the given behavior
class Node
  attr_accessor :value, :right, :diagonal, :down

  def initialize(options = {})
    @value = options[:value]
  end

end

class Grid
  attr_accessor

end
