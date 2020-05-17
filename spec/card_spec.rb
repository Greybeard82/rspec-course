class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do

  #RSpec method that allows memoization in lines 22 and 23
  let (:card) {Card.new('Ace', 'Spaces')}

  # Method to generate a new card each time it's called
  # before do
  #   @card = Card.new('Ace','Spades')
  # end

  it 'Has a rank and it can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  def card
    card = Card.new("Ace", "Spades")
  end


  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end
  
  it 'has a suite' do
    expect(card.suit).to eq('Spades')
  end
end
