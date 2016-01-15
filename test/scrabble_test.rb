gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_word_with_many_letters
    assert_equal 43, Scrabble.new.score("zyzzyva")
    assert_equal 11, Scrabble.new.score("za")
    assert_equal 12, Scrabble.new.score("qat")
  end

  def test_it_scores_empty_strings_as_zero
    assert_equal 0, Scrabble.new.score("")
  end

  def test_it_scores_nil_as_zero
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_score_is_case_insensitive
    assert_equal 6, Scrabble.new.score("case")
    assert_equal 6, Scrabble.new.score("case".upcase)
    assert_equal 6, Scrabble.new.score("case".capitalize)
  end
end
