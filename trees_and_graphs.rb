# Chapter 4 Trees and Graphs

class Tree
  attr_accessor :root
  def initialize(root = Node.new)
    @root = root
  end
end

class Graph
  attr_accessor :nodes
  def initialize(nodes)
    @nodes = nodes
  end
end

class Node
  attr_accessor :value, :children
  def initialize(value, children = [])
    @value = value
    @children = children
  end
  def to_s
    value.to_s
  end
end

# 4.1 Route Between Nodes: Given a directed graph, design an algorithm to find out whether there is a route between two nodes.

z = Node.new("z")
d = Node.new("d")
c = Node.new("c", [d])
b = Node.new("b", [c, d])
a = Node.new("a", [b, z])

directed_graph = Graph.new([a, b, c, d, z])

def direct_route(graph)

end
