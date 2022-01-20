# filename: test_hand.rb

require "minitest/autorun"
require_relative "../../tile_group.rb"

class TileGroup::TestHand < Minitest::Test
  # like an @Before in JUnit4
  def setup
    @tg = TileGroup.new
  end

  # test to convert empty group to empty string
  def test_convert_empty_group_to_string
    assert_equal "", @tg.hand
  end

  # test to convert single tile to string
  def test_convert_single_tile_group_to_string
    assert_equal "", @tg.hand
    @tg.append('A')
    assert_equal "A", @tg.hand
  end

  # test to convert mutiple tiles to string
  def test_convert_multi_tile_group_to_string
    assert_equal "", @tg.hand
    @tg.append('A')
    @tg.append('R')
    @tg.append('T')
    assert_equal "ART", @tg.hand
  end

  # test to convert mutiple tiles with duplicates to string
  def test_convert_multi_tile_group_with_duplicates_to_string
    assert_equal "", @tg.hand
    @tg.append('F')
    @tg.append('O')
    @tg.append('O')
    @tg.append('D')
    assert_equal "FOOD", @tg.hand
  end

end
