require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_it_creates_a_card
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_instance_of Card, card
  end

  def test_can_take_default_args
  card = Card.new("What is the capital of Alaska?", "Juneau")
  assert_equal "What is the capital of Alaska?", card.question
  assert_equal "Juneau", card.answer
  end
end
