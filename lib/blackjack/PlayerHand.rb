class PlayerHand
  attr_accessor :player_hand
  def deal
    @player_hand_initial = []
    2.times do
      @player_hand_initial << Deck.pop!
    end
    if @player_hand_initial == 21
      puts "Blackjack!"
      exit
    end
  end

  class PlayerTurn
    attr_reader :player_card_value
    def initialize
      Deck.player_hand = @player_hand
    end

    def hand
      player_card_value = []
      player_card_value << @player_hand.value.each
      hand = player_card_value.inject {|sum, n| sum + n }
      "A".include?(@player_hand) && dealer_card_value < 21
        +=10
      if hand < 21 loop do
        puts "Your hand is#{player_hand}"
        puts "Would you like to hit (h) or stay (s)?"
        action = gets.chomp
        if action == "h"
          @player_hand << @deck.pop!
          player_card_value.inject {|sum, n| sum + n }
        end
      end
      end

      if @player_hand = 21
        puts "You have 21.  Let's see what the dealer gets."
      end

      if @player_hand > 21
        puts "Bust!"
      end
    end
