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
    @text_string_array = @text.split("")
    @text_array = @text_string_array.map { |x| x.to_sym }

    @subtract_array_length = @tiles.length - @text_array.length

    # remove the exact indexes between subtracted arrays
    @ret = @tiles.dup
    @text_array.each do |element|
      if index = @ret.index(element)
        @ret.delete_at(index)
      end
    end
    @subtract_array = @ret

    if (@text_array != [] && @tiles.length >= @text_array.length && @subtract_array.length == @subtract_array_length)
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
