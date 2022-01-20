
# filename: test_initialize.rb

require "minitest/autorun"
require_relative "../../tile_group.rb"

class TileGroup::TestInitialize < Minitest::Test
  # like an @Before in JUnit4
  def setup
    @tg = TileGroup.new
  end

  # test to check that initialize results in an empty tile group
  def test_create_empty_tile_group
    assert_equal [], @tg.tiles
  end
end
