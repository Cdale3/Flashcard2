require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require 'pry'

class GuessTest < Minitest::Test

  def test_it_guesses
    card = Card.new("What is the capital of Alaska?", "Juneau")
    user_guess = Guess.new("Juneau", card)
    assert_instance_of Guess, user_guess
  end

  def test_does_it_match
    card = Card.new("What is the capital of Alaska?", "Juneau")
    user_guess = Guess.new("Juneau", card)
    assert_equal true, user_guess.correct?
  end

  def test_does_it_give_positive_feedback
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal "Correct!", guess.feedback
  end

  def test_does_it_give_negative_feedback
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    assert_equal false, guess.correct?
  end
end
