require './lib/guess'
require './lib/messages'

class Round
  attr_reader :deck, :guesses, :number_correct

  def initialize(cards)
    @deck = cards
    @guesses = []
    @number_correct = 0
  end

  def current_card
    card = guesses.count
    deck.cards[card]
  end

  def record_guess(guess)
      guess = Guess.new(guess, current_card)
      @guesses << guess
      if guess.correct?
        @number_correct += 1
      end

    end

  def percent_correct
    (@number_correct.to_f/guesses.count) * 100
  end

  def start
    puts Messages.new.welcome

    puts Messages.new.card_1_message
    puts current_card.question
    user_guess = gets.chomp.downcase
    current_guess = Guess.new(user_guess, current_card)
    record_guess(user_guess)
    puts current_guess.feedback

    puts Messages.new.card_2_message
    puts current_card.question
    user_guess = gets.chomp.downcase
    current_guess = Guess.new(user_guess, current_card)
    record_guess(user_guess)
    puts current_guess.feedback

    puts Messages.new.card_3_message
    puts current_card.question
    user_guess = gets.chomp.downcase
    current_guess = Guess.new(user_guess, current_card)
    record_guess(user_guess)
    puts current_guess.feedback

    puts Messages.new.card_4_message
    puts current_card.question
    user_guess = gets.chomp.downcase
    current_guess = Guess.new(user_guess, current_card)
    record_guess(user_guess)
    puts current_guess.feedback

    puts Messages.new.game_over
    # puts Messages.new.percent_correct
    puts "You got #{number_correct} correct guesses out of #{deck.count} for a score of #{percent_correct}%."


  end
end
