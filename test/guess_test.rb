require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card.rb'
require './lib/guess.rb'



class EventTest < Minitest::Test
  def test_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_attributes_exist
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "10 of Hearts", guess.guess
    assert_equal card , guess.card
  end

  def test_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal card, guess.card
  end

  def test_response
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "10 of Hearts", guess.response
  end

  def test_correct?
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert true, guess.correct?
    card = Card.new("9", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    refute false, guess.correct?
  end

  def test_feedback
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    # binding.pry
    assert_equal "correct", guess.feedback
    card = Card.new("9", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    # binding.pry
    assert_equal "incorrect", guess.feedback
  end


end

# binding.pry
