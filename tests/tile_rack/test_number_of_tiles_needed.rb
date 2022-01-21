# filename: test_number_of_tiles_needed.rb

require "minitest/autorun"
require_relative "../../tile_rack.rb"
require_relative "../../tile_group.rb"

class TileRack::TestNumberOfTilesNeeded < Minitest::Test
  # like an @Before in JUnit4
  def setup
    @tr = TileRack.new
  end

  # test to return that empty rack needs 7 tiles
  def test_empty_tile_rack_should_need_max_tiles
    assert_equal 7, @tr.number_of_tiles_needed
  end

  # test to return that rack needs 6 tiles
  def test_tile_rack_with_one_tile_should_need_max_minus_one_tiles
    @tr.append('A')
    assert_equal 6, @tr.number_of_tiles_needed
  end

  # test to return that rack needs a few tiles
  def test_tile_rack_with_several_tiles_should_need_some_tiles
    @tr.append('A')
    @tr.append('R')
    @tr.append('M')
    assert_equal 4, @tr.number_of_tiles_needed
  end

  # test to return that rack has full tiles (needs none)
  def test_that_full_tile_rack_doesnt_need_any_tiles
    @tr.append('A')
    @tr.append('A')
    @tr.append('R')
    @tr.append('M')
    @tr.append('T')
    @tr.append('S')
    @tr.append('W')
    assert_equal 0, @tr.number_of_tiles_needed
  end

end
