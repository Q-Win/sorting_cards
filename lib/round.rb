require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck.rb'
require './lib/card.rb'
require './lib/round.rb'
require './lib/guess.rb'
require 'pry'


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
    #binding.pry
    @deck.rotate
    #binding.pry
  end


end


#push.shift
