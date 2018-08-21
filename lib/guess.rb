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
