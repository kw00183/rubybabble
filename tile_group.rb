class TileGroup
  attr_accessor :tiles

  def initialize
    @tiles = []
  end

  def append(tile)
    @tiles.push tile.to_sym
  end

  def remove(tile)
    @index = @tiles.index(tile.to_sym)
    @tiles.delete_at(@index)
  end

  def hand
    @hand_array = []
    @tiles.each { |tile| @hand_array.push(tile.to_s) }
    @hand = @hand_array.join("")
    return @hand
  end

end
