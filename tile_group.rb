# class creates a TileGroup object, controls the append/remove of tiles and returns the string hand
class TileGroup

  attr_accessor :tiles

  def initialize
    @tiles = []
  end

  # method used to append tiles to group
  def append(tile)
    @tiles.push tile.to_sym
  end

  # method used to remove tiles from group
  def remove(tile)
    @index = @tiles.index(tile.to_sym)
    @tiles.delete_at(@index)
  end

  #method used to output tiles as string
  def hand
    @hand_array = []
    @tiles.each { |tile| @hand_array.push(tile.to_s) }
    @hand = @hand_array.join("")
    return @hand
  end

end
