class Word < TileGroup

  def initialize
    @word = ""
  end

  def score
    @score = 0
    @word = TileGroup.tiles

    if (@word != nil)
      @word.each {
        @score += tile TileBag.points_for(tile.to_sym)
      }
    end
    return @score
  end

end
