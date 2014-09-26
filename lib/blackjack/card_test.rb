require "minitest/autorun"
require "card"

class CardTest MiniTest::Test
  #cards have a suit
  #have a rank
  #have a value

  def test_cards_have_a_suit
    card = Card.new
    #we haven't defined suit in Card class
    assert ["Hearts","Clubs", "Diamonds","Spades"] "Suit should be one of hearts, clubs, diamonds, or spades."
  end  
