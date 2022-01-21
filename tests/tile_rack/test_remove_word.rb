# filename: test_remove_word.rb

require "minitest/autorun"
require_relative "../../tile_rack.rb"
require_relative "../../tile_group.rb"

class TileRack::TestRemoveWord < Minitest::Test
  # like an @Before in JUnit4
  def setup
    @tr = TileRack.new
  end

  # test to return tiles left after remove word whose letters are in order on the rack
  def test_can_remove_a_word_whose_letters_are_in_order_on_the_rack
    @tr.append('L')
    @tr.append('O')
    @tr.append('F')
    @tr.append('M')
    @tr.append('V')
    @tr.append('E')
    @tr.append('D')
    assert_equal 0, @tr.number_of_tiles_needed
    assert_equal [:F, :M, :D], @tr.remove_word('LOVE')
  end

  # test to return tiles left after remove word whose letters are not in order on the rack
  def test_can_remove_a_word_whose_letters_are_not_in_order_on_the_rack
    @tr.append('V')
    @tr.append('O')
    @tr.append('F')
    @tr.append('M')
    @tr.append('L')
    @tr.append('E')
    @tr.append('D')
    assert_equal 0, @tr.number_of_tiles_needed
    assert_equal [:F, :M, :D], @tr.remove_word('LOVE')
  end

  # test to return tiles left after remove word whose letters have duplicates
  def test_can_remove_word_with_duplicate_letters
    @tr.append('V')
    @tr.append('O')
    @tr.append('F')
    @tr.append('O')
    @tr.append('L')
    @tr.append('E')
    @tr.append('P')
    assert_equal 0, @tr.number_of_tiles_needed
    assert_equal [:V, :F, :E], @tr.remove_word('LOOP')
  end

  # test to return tiles left after remove word where rack has duplicates
  def test_can_remove_word_without_removing_unneeded_duplicate_letters
    @tr.append('V')
    @tr.append('O')
    @tr.append('F')
    @tr.append('O')
    @tr.append('L')
    @tr.append('E')
    @tr.append('P')
    assert_equal 0, @tr.number_of_tiles_needed
    assert_equal [:F, :O, :P], @tr.remove_word('LOVE')
  end

end
