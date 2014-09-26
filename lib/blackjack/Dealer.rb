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
