# class used to create the tile rack object
class TileRack < TileGroup
  MAX_SIZE = 7

  def initialize
    super
  end

  # method used to return number of tiles needed to fill the rack
  def number_of_tiles_needed
    return MAX_SIZE - @tiles.length
  end

  # method used to check if the rack has the tiles needed for the played word
  def has_tiles_for?(text)
    @text = text
    @text_array = convert_string_to_array(@text)

    @subtracted_array_length = @tiles.length - @text_array.length
    @subtracted_array = subtract_arrays(@tiles, @text_array)

    if (@text_array != [] && @tiles.length >= @text_array.length && @subtracted_array.length == @subtracted_array_length)
      return true
    else
      return false
    end
  end

  # method removes the played word tiles from the rack and creates/returns a new Word class object
  def remove_word(text)
    @text = text
    @text_array = convert_string_to_array(@text)
    @subtracted_array = subtract_arrays(@tiles, @text_array)

    # remove used tiles from rack
    @text_array.each { |tile| remove(tile) }

    # create new word object and add the word tiles to it
    @new_word = Word.new
    @text_array.each { |tile| @new_word.append(tile.to_s) }

    return @new_word
  end

  # method used to convert a string into an array of symbols
  def convert_string_to_array(text)
    @text = text
    @text_string_array = @text.split("")
    @text_array = @text_string_array.map { |x| x.to_sym }
    return @text_array
  end

  # method used to return the new array with the played word tiles removed
  def subtract_arrays(rack_array, word_array)
    @ret = rack_array.dup
    word_array.each do |element|
      if index = @ret.index(element)
        @ret.delete_at(index)
      end
    end
    @subtracted_array = @ret
    return @subtracted_array
  end

end
