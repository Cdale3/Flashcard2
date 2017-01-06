require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
require 'pry'


class CardGeneratorTest < Minitest::Test

  def test_can_we_make_cards
    filename = "./lib/cards.txt"
    cards = CardGenerator.new(filename).cards
    

  end

end
