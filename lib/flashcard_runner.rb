require './lib/card'
require './lib/round'
require './lib/deck'
require './lib/card_generator'

cards = CardGenerator.new("./lib/cards.txt").cards
flashcards = Deck.new(cards)
round = Round.new(flashcards)

round.start
