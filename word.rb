require "./tile_group.rb"

class Word < TileGroup

  def initialize
    super
    @word = []
  end

  def score
    @score = 0
    @word = self.tiles

    if @word != []
      @word.each {
        |i| @sum += TileBag.points_for(i.to_sym)
      }
    end
    return @score
  end

  def return_word
    return @word
  end

end
