
# filename: test_draw_tile.rb

require "minitest/autorun"
require_relative "../../tile_bag.rb"

class TileBag::TestDrawTile < Minitest::Test
  # like an @Before in JUnit4
  def setup
    @tb = TileBag.new
  end

  # test to check the bag is full
  # remove 98 tiles
  # check that bag is now empty
  def test_has_proper_number_of_tiles
    assert_equal false, @tb.empty?
    98.times() { @tb.draw_tile }
    assert_equal true, @tb.empty?
  end

  # check that the correct number of tiles exist per letter
  def test_has_proper_tile_distribution
    @test_array = []
    98.times() {
      @tile = @tb.draw_tile.to_s
      @test_array.push @tile
    }
    assert_equal 9, @test_array.count('A')
    assert_equal 2, @test_array.count('B')
    assert_equal 2, @test_array.count('C')
    assert_equal 4, @test_array.count('D')
    assert_equal 12, @test_array.count('E')
    assert_equal 2, @test_array.count('F')
    assert_equal 3, @test_array.count('G')
    assert_equal 2, @test_array.count('H')
    assert_equal 9, @test_array.count('I')
    assert_equal 1, @test_array.count('J')
    assert_equal 1, @test_array.count('K')
    assert_equal 4, @test_array.count('L')
    assert_equal 2, @test_array.count('M')
    assert_equal 6, @test_array.count('N')
    assert_equal 8, @test_array.count('O')
    assert_equal 2, @test_array.count('P')
    assert_equal 1, @test_array.count('Q')
    assert_equal 6, @test_array.count('R')
    assert_equal 4, @test_array.count('S')
    assert_equal 6, @test_array.count('T')
    assert_equal 4, @test_array.count('U')
    assert_equal 2, @test_array.count('V')
    assert_equal 2, @test_array.count('W')
    assert_equal 1, @test_array.count('X')
    assert_equal 2, @test_array.count('Y')
    assert_equal 1, @test_array.count('Z')
  end
end
