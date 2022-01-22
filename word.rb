# class used to create a word object and tally the word tile score
class Word < TileGroup

  def initialize
    super
  end

  # method used to get word tiles score
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
