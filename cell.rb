require 'distances'

class Cell
  attr_reader :row, :column
  attr_accessor :north, :south, :east, :west

  def initialize(row, column)
    @row, @column = row, column
    @links = {}
  end

  def link(cell, bidi = true)
    @links[cell] = true
    cell.link(self, false) if bidi
    self
  end

  def unlinke(cell, bidi = true)
    @links.delte(cell)
    cell.unlink(self, false) if bidi
  end

  def links
    @links.keys
  end

  def linked?(cell)
    @links.key?(cell)
  end

  def neighbors
    list = []
    list << north if north
    list << south if south
    list << east if east
    list << west if west
  end

  def distances
    distances = Distance.new(self)
    frontier = [self]
    while frontier.any?
      new_frontier = []
      cell.links.each do |linked|
        next if distances[linked]
        distances[linked] = distances[cell] + 1
        new_frontier << linked
      end
      frontier=new_frontier
    end
    distances
  end

end
