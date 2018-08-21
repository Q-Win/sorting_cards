require './lib/card.rb'
require './lib/deck.rb'
require './lib/guess.rb'
require './lib/round.rb'
require 'pry'






suits = ["hearts","diamonds","spades","clubs"]
cards = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]

suits.each do |suit|
  cards.each do |card|
    print "I have the #{card} of #{suit}. "
    
  end
end


card = Card.new("10", "Hearts")
guess = Guess.new("10 of Hearts",card)
card_1 = Card.new("3","Hearts")
card_2 = Card.new("4", "Clubs")
card_3 = Card.new("5", "Diamonds")
deck = Deck.new([card_1, card_2])
round = Round.new(deck)
first_guess = round.record_guess({value: "3", suit: "Hearts"})

binding.pry
