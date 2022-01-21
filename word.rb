class Word < TileGroup

  def initialize
    super
  end

  def score
    @score = 0

    if @tiles != []
      @tiles.each {
        |i| @score += TileBag.points_for(i.to_sym)
      }
    end
    return @score
  end

end
