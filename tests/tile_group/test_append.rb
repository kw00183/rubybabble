# filename: test_append.rb

require "minitest/autorun"
require_relative "../../tile_group.rb"

class TileGroup::TestAppend < Minitest::Test
  # like an @Before in JUnit4
  def setup
    @tg = TileGroup.new
  end

  # test to append one tile to group
  def test_append_one_tile
    @tg.append('A')
    assert_equal "A", @tg.hand
  end

  # test to append many tiles to group
  def test_append_many_tiles
    @tg.append('A')
    @tg.append('R')
    @tg.append('M')
    assert_equal "ARM", @tg.hand
  end

  # test to append duplicate tiles to group
  def test_append_duplicate_tiles
    @tg.append('A')
    @tg.append('A')
    @tg.append('A')
    assert_equal "AAA", @tg.hand
  end

end
