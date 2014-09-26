require "card"
class Deck
attr_reader :deck, :value
def initialize
  @deck = []
  @suit = ["hearts", "spades", "diamonds", "clubs"]
  @rank = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
end
  @rank.each do |r|
    @suit.each do |s|
      @deck << Card.new(s,r)
      puts @deck
    end
  end
end
