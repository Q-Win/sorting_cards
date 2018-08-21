
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

  end




end


#push.shift
