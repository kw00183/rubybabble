# filename: test_number_of_tiles_needed.rb

require "minitest/autorun"
require_relative "../../tile_rack.rb"
require_relative "../../tile_group.rb"

class TileRack::TestHasTilesFor < Minitest::Test
  # like an @Before in JUnit4
  def setup
    @tr = TileRack.new
  end

  # test to return true if rack has all the letters needed for word and word in order
  def test_rack_has_needed_letters_when_letters_are_in_order_no_duplicates
    @tr.append('A')
    @tr.append('A')
    @tr.append('R')
    @tr.append('M')
    @tr.append('T')
    @tr.append('S')
    @tr.append('W')
    assert_equal 0, @tr.number_of_tiles_needed
    assert_equal true, @tr.has_tiles_for?('ARM')
  end

  # test to return true if rack has all the letters needed for word and word not in order
  def test_rack_has_needed_letters_when_letters_are_not_in_order_no_duplicates
    @tr.append('A')
    @tr.append('A')
    @tr.append('R')
    @tr.append('M')
    @tr.append('T')
    @tr.append('S')
    @tr.append('W')
    assert_equal 0, @tr.number_of_tiles_needed
    assert_equal true, @tr.has_tiles_for?('MTA')
  end

  # test to return false if rack does not have letters
  def test_rack_doesnt_contain_any_needed_letters
    @tr.append('A')
    @tr.append('A')
    @tr.append('R')
    @tr.append('M')
    @tr.append('T')
    @tr.append('S')
    @tr.append('W')
    assert_equal 0, @tr.number_of_tiles_needed
    assert_equal false, @tr.has_tiles_for?('QVO')
  end

  # test to return false if rack does not have all letters
  def test_rack_contains_some_but_not_all_needed_letters
    @tr.append('A')
    @tr.append('A')
    @tr.append('R')
    @tr.append('M')
    @tr.append('T')
    @tr.append('S')
    @tr.append('W')
    assert_equal 0, @tr.number_of_tiles_needed
    assert_equal false, @tr.has_tiles_for?('QVA')
  end

  # test to return true if rack does have all letters and some are duplicates
  def test_rack_contains_a_word_with_duplicate_letters
    @tr.append('O')
    @tr.append('O')
    @tr.append('F')
    @tr.append('M')
    @tr.append('T')
    @tr.append('S')
    @tr.append('D')
    assert_equal 0, @tr.number_of_tiles_needed
    assert_equal true, @tr.has_tiles_for?('FOOD')
  end

  # test to return false if rack does have all duplicate letters of a word with duplicated
  def test_rack_doesnt_contain_enough_duplicate_letters
    @tr.append('L')
    @tr.append('O')
    @tr.append('F')
    @tr.append('M')
    @tr.append('T')
    @tr.append('S')
    @tr.append('D')
    assert_equal 0, @tr.number_of_tiles_needed
    assert_equal false, @tr.has_tiles_for?('FOOD')
  end

end
