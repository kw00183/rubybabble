class TileGroup
  attr_accessor :tiles

  def initialize
    @tile_group = []
  end

  def tiles
    return @tile_group
  end

  def append(tile)
    @tile_group.push tile.to_sym
  end

  def remove(tile)
    @index = @tile_group.index(tile.to_sym)
    @tile_group.delete_at(@index)
  end

  def hand
    @hand_array = []
    @tile_group.each { |tile| @hand_array.push(tile.to_s) }
    @hand = @hand_array.join("")
    return @hand
  end

end
