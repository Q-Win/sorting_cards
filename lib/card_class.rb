require 'pry'
require 'minitest/pride'

class Card

  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

end

class Guess

  attr_reader :guess, :card

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def card
    @card
  end
  def response
    @guess
  end

  def correct?
     @guess == "#{@card.value} of #{@card.suit}"

  end

  def feedback
    if correct? == true
      p "correct"
    elsif
      p "incorrect"
    end

  end

end



class Deck

  attr_reader :card_list

  def initialize(card_list)
    @card_list = card_list
  end

  def cards
    @card_list
  end

  def count
    @card_list.length
  end



end

class Round

  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

end





card = Card.new("10", "Hearts")
guess = Guess.new("10 of Hearts",card)
card_1 = Card.new("3","Hearts")
card_2 = Card.new("4", "Clubs")
card_3 = Card.new("5", "Diamonds")
deck = Deck.new([card_1, card_2])
round = Round.new(deck)

# binding.pry

suits = ["hearts","diamonds","spades","clubs"]
cards = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
all_cards = []
suits.each do |suit|
  cards.each do |card|

    all_cards << Card.new(card,suit)





  end
end

binding.pry
