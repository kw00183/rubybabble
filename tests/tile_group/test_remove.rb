# filename: test_remove.rb

require "minitest/autorun"
require_relative "../../tile_group.rb"

class TileGroup::TestRemove < Minitest::Test
  # like an @Before in JUnit4
  def setup
    @tg = TileGroup.new
  end

  # test to remove one tile from group
  def test_remove_only_tile
    assert_equal "", @tg.hand
    @tg.append('A')
    assert_equal "A", @tg.hand
    @tg.remove('A')
    assert_equal "", @tg.hand
  end

  # test to remove first tile from many
  def test_remove_first_tile_from_many
    assert_equal "", @tg.hand
    @tg.append('A')
    @tg.append('R')
    @tg.append('M')
    assert_equal "ARM", @tg.hand
    @tg.remove('A')
    assert_equal "RM", @tg.hand
  end

  # test to remove last tile from many
  def test_remove_last_tile_from_many
    assert_equal "", @tg.hand
    @tg.append('A')
    @tg.append('R')
    @tg.append('M')
    assert_equal "ARM", @tg.hand
    @tg.remove('M')
    assert_equal "AR", @tg.hand
  end

  # test to remove middle tile from many
  def test_remove_middle_tile_from_many
    assert_equal "", @tg.hand
    @tg.append('A')
    @tg.append('R')
    @tg.append('M')
    assert_equal "ARM", @tg.hand
    @tg.remove('R')
    assert_equal "AM", @tg.hand
  end

  # test to remove multiple tiles
  def test_remove_multiple_tiles
    assert_equal "", @tg.hand
    @tg.append('A')
    @tg.append('R')
    @tg.append('M')
    assert_equal "ARM", @tg.hand
    @tg.remove('A')
    @tg.remove('R')
    @tg.remove('M')
    assert_equal "", @tg.hand
  end

  # test to make sure duplicates don't remove
  def test_make_sure_duplicates_are_not_removed
    assert_equal "", @tg.hand
    @tg.append('A')
    @tg.append('A')
    @tg.append('A')
    @tg.append('T')
    @tg.append('T')
    assert_equal "AAATT", @tg.hand
    @tg.remove('A')
    assert_equal "AATT", @tg.hand
    @tg.remove('T')
    assert_equal "AAT", @tg.hand
  end

end
