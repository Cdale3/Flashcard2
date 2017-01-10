require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'
require './lib/round'
require './lib/deck'


class RoundTest < Minitest::Test

  def test_it_starts_a_round
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    flashcards = Deck.new([card_1, card_2])
    round = Round.new(flashcards)
    assert_instance_of Round, round
  end

  def test_it_records_guesses
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    flashcards = Deck.new([card_1, card_2])
    round = Round.new(flashcards)
    assert_equal [], round.guesses
  end

  def test_it_can_select_card
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_it_records_guesses
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    flashcards = Deck.new([card_1, card_2])
    round = Round.new(flashcards)
    round.record_guess("Juneau", card_1)
    assert_equal "Juneau", round.guesses[0].user_guess
  end

  def test_it_still_knows_what_to_do_with_bad_input
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    flashcards = Deck.new([card_1, card_2])
    round = Round.new(flashcards)
    round.record_guess("Juneau", card_2)
    assert_instance_of Guess, round.record_guess("2", card_2)
  end

  def test_it_can_return_results_in_percent
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    flashcards = Deck.new([card_1, card_2])
    round = Round.new(flashcards)
    round.record_guess("Juneau", card_1)
    round.record_guess("2", card_2)
    assert_equal 50, round.percent_correct
  end
end
