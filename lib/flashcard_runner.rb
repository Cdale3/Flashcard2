require './lib/card'
require './lib/round'
require './lib/deck'



card1 = Card.new("What is the best sport in the world?", "Football")
card2 = Card.new("What is the best city in the country?", "Denver")
card3 = Card.new("What is a bar for nerds in Denver?  (Hint: it has one digit in the answer)", "1up")
card4 = Card.new("What is the elevation of Denver(in feet)?", "5280")
flashcards = Deck.new([card1, card2, card3, card4])
round = Round.new(flashcards)

round.start