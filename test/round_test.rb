require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck.rb'
require './lib/card.rb'
require './lib/round.rb'
require './lib/guess.rb'

class RoundTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_attributes_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck, round.deck
    assert_equal [], round.guesses
  end

  def test_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_record_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    guess = Guess.new(card_1,"3 of Hearts")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    round.record_guess({value:"3", suit: "Hearts"})
    

    assert_equal "3", round.guesses.first.card.value
    assert_equal "Hearts", round.guesses.first.card.suit
    assert_equal "3 of Hearts", round.guesses.first.guess

  end

  def test_it_can_return_number_of_correct_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    guess = Guess.new(card_1,"3 of Hearts")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    round.record_guess({value:"3", suit: "Hearts"})
    round.record_guess({value:"2", suit:"Hearts"})
    round.record_guess({value: "3", suit: "Hearts"})

    assert_equal 2, round.number_correct

  end

  def test_it_can_calculate_percent_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    guess = Guess.new(card_1,"3 of Hearts")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    round.record_guess({value:"3", suit: "Hearts"})
    round.record_guess({value:"2", suit:"Hearts"})
    round.record_guess({value: "3", suit: "Hearts"})

    assert_equal 67, round.percent_correct
  end



end
