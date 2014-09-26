class Card
  def initialize (suit, rank)
    @suit = suit
    @rank = rank
  end
  def to_s
    "#{@rank} #{@suit}"
  end
end
