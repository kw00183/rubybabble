# filename: test_score.rb

require "minitest/autorun"
require_relative "../../word.rb"
require_relative "../../tile_group.rb"

class Word::TestInitialize < Minitest::Test
  # like an @Before in JUnit4
  def setup
    @wd = Word.new
  end

  # test to return a score of 0 for empty word
  def test_empty_word_should_have_score_of_zero
    assert_equal 0, @wd.score
  end

  # test to return a score of 0 for empty word
  def test_score_a_one_tile_word
    @wd.append('A')
    assert_equal 1, @wd.score
  end

end
