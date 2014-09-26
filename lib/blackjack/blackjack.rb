class Card
  def initialize (suit, rank)
    @suit = suit
    @rank = rank
  end
  def to_s
    "#{@rank} #{@suit}"
  end
end

class Deck
  attr_reader :deck, :value
  def initialize
    @deck = deck
    @suit = suit
    @rank = rank
  end
  @deck = []
  @suit = ["hearts", "spades", "diamonds", "clubs"]
  @rank = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
  @rank.each do |r|
    @suit.each do |s|
      @deck << Card.new(s,r)
      puts @deck
    end
  end
end

  def value
    if ["J","Q","K"].incude?(@rank)
      10
    elsif [1..10].include?(@rank)
      @rank_to.i
    elsif @rank == "A"
    1
    end
  end

class Dealer
  attr_reader :player_hand, :dealer_hand, :bet
  dealer = Dealer.new
  def shuffle
    @deck = Deck.new
    @play_with_me = dealer.deck.shuffle!
  end

  def deal
    @dealer_hand = []
    @player_hand = []

    2.times do
      @player_hand << @play_with_me.pop!
    end
    2.times do
    @dealer_hand << @play_with_me.pop!
    end
  end
  def bet
    puts "How much would you like to bet? ($10 increments)?"
    gets.chomp.to_i = @bet
    player_pot - @bet
  end
end

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
      @hand = player_card_value.inject {|sum, n| sum + n }
      "A".include?(@player_hand) && dealer_card_value < 21
      dealer_card_value += 10
    end
      while @hand.to_i < 21
        puts "Your hand is#{@player_hand}"
        puts "Would you like to hit (h) or stay (s)?"
        action = gets.chomp
        if action == "h"
          @player_hand << Deck.pop!
          player_card_value.inject {|sum, n| sum + n }
        end
      end
    end

    if @player_hand == 21
      puts "You have 21.  Let's see what the dealer gets."
    end

    if @player_hand > 21
      puts "Bust!"
    end
  end

  class DealerHand
    attr_accessor :dealer_hand
    def deal
      @dealer_hand_initial = []
      2.times do
        @dealer_hand_initial << Deck.pop!
      end
      if @dealer_hand_initial == 21
        puts "Dealer has Blackjack!"
        exit
      else
        puts "The Dealer's hand is #{@dealer_hand_initial}"
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
        @hand = dealer_card_value.inject {|sum, n| sum + n }
        while @hand.to_i < 17
          puts "The Dealer hits"
          @dealer_hand << @deck.pop!
          dealer_card_value.inject {|sum, n| sum + n }
          "A".include?(@dealer_hand) && dealer_card_value < 21
          dealer_card_value += 10
        end
      end
      puts "The Dealer stays at#{dealer_card_value}"
    end

    if @dealer_hand == 21
      puts "The Dealer has 21."
    end

    if @player_hand > 21
      puts "The Dealer busted!"
    end
  end

  class Scoring
    def who_wins
      if player_hand_value > dealer_hand_value
        puts "You win!"
        player_pot += bet
      else
        puts "Dealer Wins!"

      end
    end
  end
