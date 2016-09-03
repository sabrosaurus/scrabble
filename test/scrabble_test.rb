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

  def test_returns_zero_for_empty_or_nil
    assert_equal 0, Scrabble.new.score(nil)
    assert_equal 0, Scrabble.new.score("")
  end

  def test_it_can_score_a_two_letter_combo
    skip
    assert_equal 4, Scrabble.new.score("ab")
    assert_equal 11, Scrabble.new.score("qr")
  end

  def test_word_format
    assert_equal ['a','b','c','d'], Scrabble.new.word_format('abcd')
  end
end
