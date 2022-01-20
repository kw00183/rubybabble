require_relative "../../tile_bag.rb"

class Word < TileGroup

  def initialize
  end

  def score
    @score = 0
    @tiles_to_score = TileGroup.tiles
    @tiles_to_score.each {
      @score += |tile| TileBag.points_for(tile.to_sym)
    }
    return @score
  end

end
