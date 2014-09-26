class DealerHand
  attr_accessor :dealer_hand
  def deal
    @player_hand_initial = []
    2.times do
      @player_hand_initial << Deck.pop!
    end
    if @player_hand_initial == 21
      puts "Dealer has Blackjack!"
      exit
    end
  end

  class DealerTurn
    attr_reader :dealer_card_value
    def initialize
      Deck.dealer_hand = @dealer_hand
    end

    def hand
      dealer_card_value = []
      dealer_card_value << @dealer_hand.value.each
      hand = dealer_card_value.inject {|sum, n| sum + n }
      if hand < 17 loop do
        puts "The Dealer hits"
          @dealer_hand << @deck.pop!
          dealer_card_value.inject {|sum, n| sum + n }
          "A".include?(@dealer_hand) && dealer_card_value < 21
            +=10
        end
      end
      puts "The Dealer stays at#{dealer_card_value}"
      end

      if @dealer_hand = 21
        puts "The Dealer has 21."
      end

      if @player_hand > 21
        puts "The Dealer busted!"
      end
    end
