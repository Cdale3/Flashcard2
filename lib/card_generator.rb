require './lib/card'
require './lib/deck'
require './lib/round'


class CardGenerator
  attr_reader :card_file, :card, :array

  def initialize(filename)
    @card_file = filename
    @card = Array.new
  end

  def cards
    File.readlines(card_file).each do |line|
      card << line.each.split(",")
      Card.new(card[0], card[1])
    end
  end
end
