class TileRack < TileGroup
  MAX_SIZE = 7

  def initialize
    super
  end

  def number_of_tiles_needed
    return MAX_SIZE - @tiles.length
  end

  def has_tiles_for?(text)
    @text = text
    if number_of_tiles_needed >= @text.length
      return true
    else
      return false
    end
  end

  def remove_word(text)
    @text = text
    @text_array = @text.map{ |s| s.split("").uniq }

    @text_array.each {
      |i| @index = @tiles.index(i.to_sym)
      @tiles.delete_at(@index)
    }
    return @tiles
  end

end
