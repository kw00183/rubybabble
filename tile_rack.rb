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
    @text_array = convert_string_to_array(@text)

    @subtract_array_length = @tiles.length - @text_array.length
    @subtract_array = subtract_arrays(@tiles, @text_array)

    if (@text_array != [] && @tiles.length >= @text_array.length && @subtract_array.length == @subtract_array_length)
      return true
    else
      return false
    end
  end

  def remove_word(text)
    @text = text
    @text_array = convert_string_to_array(@text)

    @tiles = subtract_arrays(@tiles, @text_array)
    return @tiles
  end

  def convert_string_to_array(text)
    @text = text
    @text_string_array = @text.split("")
    @text_array = @text_string_array.map { |x| x.to_sym }
    return @text_array
  end

  def subtract_arrays(rack_array, word_array)
    @ret = rack_array.dup
    word_array.each do |element|
      if index = @ret.index(element)
        @ret.delete_at(index)
      end
    end
    @subtract_array = @ret
    return @subtract_array
  end

end
