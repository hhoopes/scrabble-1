gem 'minitest'
require_relative '../lib/word_finder'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordFinderTest < Minitest::Test
  def test_look_up_word_returns_word_if_found
    assert_equal "cat", WordFinder.new.look_up_word("cat")
  end
end
