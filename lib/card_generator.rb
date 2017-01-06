require './lib/card'
require './lib/deck'
require './lib/round'
require 'pry'

class CardGenerator
  attr_reader :card_file, :card, :array

  def initialize(filename)
    @card_file = filename
    @card = Array.new
  end

  def cards
    File.readlines(card_file).map do |line|
      card << line.split(",")
      index_line = line.split(",")
      Card.new(index_line[0], index_line[1].chomp)
  end
  end
end
