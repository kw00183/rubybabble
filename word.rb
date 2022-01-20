require_relative "../../tile_bag.rb"

class Word < TileGroup

  def initialize
    @score = 0
  end

  def score
    @tiles_to_score = TileGroup.tiles
    @tiles_to_score.each {
      @score += |tile| TileBag.points_for(tile.to_sym)
    }
    return @score
  end

end
