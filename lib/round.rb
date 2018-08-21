require 'pry'
require './lib/deck.rb'
require './lib/card.rb'
require './lib/guess.rb'


class Round

  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.card_list[0]
  end

  def record_guess(guess)
    card_name = "#{guess[:value]} of #{guess[:suit]}"

    @guesses << Guess.new(card_name,current_card)

    @deck = Deck.new(@deck.card_list.rotate)


  end

  def number_correct
    number_correct = 0
    @guesses.each do |guess|
      if guess.correct?
        number_correct += 1
      end
    end
    number_correct
  end

  def percent_correct
    
    ((number_correct/@guesses.length.to_f)*100).round(0)

  end

end
