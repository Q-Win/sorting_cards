require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card.rb'
require 'pry'






class EventTest < Minitest::Test
  def test_it_exists
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_attributes_exist
    card = Card.new("Ace", "Spades")
    assert_equal "Ace", card.value
    assert_equal "Spades", card.suit
  end

end

binding.pry
