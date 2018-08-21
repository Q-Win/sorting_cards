

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
