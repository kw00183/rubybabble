# filename: test_initialize.rb

require "minitest/autorun"
require_relative "../../word.rb"

class Word::TestInitialize < Minitest::Test
  # like an @Before in JUnit4
  def setup
    @wd = Word.new
  end

  # test to create empty word on initialize of Word class
  def test_create_empty_word
    assert_equal 0, @wd.score
  end

end
