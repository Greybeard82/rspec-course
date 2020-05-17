class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do

  #RSpec method that allows memoization in lines 22 and 23, also allow lazy loading (process is only ran when called upon)
  let (:card) {Card.new('Ace', 'Spaces')}

  # Method to generate a new card each time it's called
  # before do
  #   @card = Card.new('Ace','Spades')
  # end

  # def card
  #   card = Card.new("Ace", "Spades")
  # end
  
  it 'Has a rank and it can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end
  
  it 'has a suite' do
    expect(card.suit).to eq('Spades')
  end

  it 'Has a custom error message' do
    comparison = 'Spade'
    expect(card.suit).to eq(comparison), "I expected #{comparison} but got #{card.suit} instead" 
  end
end
